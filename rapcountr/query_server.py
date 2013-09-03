"""Script to read user queries and output ranked words matching that query.
   Usage: python query_server.py [filename containing (name, score) pairs]"""

import sys
from bisect import insort
from construct import *


if len(sys.argv) is not 2:
    sys.exit("Wrong Argument Length. Usage: python query_server.py [filename containing (name,score) pairs]")

def list_search_main(query, trie):
    """Main list search. Return list of up to 20 words matching query.
       Find prefix node of query and recurse down its subtrie."""

    prefix_node = trie.get_prefix_node(query)
    result_list = []

    if prefix_node is not None:
        recurse_trie(prefix_node, query, result_list)

    return result_list


def recurse_trie (trie, string, result_list):
    """Recurse subtrie and build corresponding string.
       On reaching leaf, do insertion-sort into result_lists."""

    if trie.value is not None:
        word = (trie.value, string)
        if word not in result_list:
            if len(result_list) >= 10: #Pop out low-scoring word, if size > 10
                if word[0] > result_list[0][0]:
                    result_list.pop(0)
                    insort(result_list, word)
            else:
                insort(result_list, word)

    for char, node in trie.root.iteritems(): #Recurse down children
        recurse_trie(node, string+char, result_list)

def rank(result_list):
    """Return trimmed result_list, with only 10 highest scoring words."""
    result_list.reverse()
    if len(result_list) > 10:
        return result_list[:10]
    else:
        return result_list

def print_results(result_list):
    """Print results as Word-score pair."""
    for (score, word) in result_list:
        print "Word: ", word,  " Score: ",  score



def global_lookup(query, trie = None):

    if trie == None:
    	results_list = [('1', query), ('2', 'def')]
    else:
        results_list = rank(list_search_main(query.lower(), trie))

    ret_array = []
    for (score, word) in results_list:
        ret_array.append( ("Word: "+ word + " Score: " + str(score)) )

    return ret_array


