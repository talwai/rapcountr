"""Script to read user queries and output ranked words matching that query.
   Usage: python query_server.py [filename containing (name, score) pairs]"""

import sys
from bisect import insort
from construct import *


if len(sys.argv) is not 2:
    sys.exit("Wrong Argument Length. Usage: python query_server.py [filename containing (name,score) pairs]")

FILENAME = sys.argv[1]

print "Loading data. Please wait..."
#Decode serialized JSON and store trie
MY_TRIE = jsonpickle.decode( construct_json(FILENAME) )

def underscore_search(trie, string = ''):
    """Generate iterable of '_' nodes in 'trie'.
       Recurse through trie, yield all nodes with underscore_nodes attribute."""
    if trie.underscore_root is not None:
        if trie.underscore_node is not None:
            yield trie.underscore_node, string
        for char, node in trie.root.iteritems():
            if node.underscore_node is not None:
                yield node.underscore_node, string + char
            if node.underscore_root is not None:
                for trie, prefix in underscore_search(node, string+char):
                    yield trie, prefix

#Wrap above generator in static list
ALL_UNDERSCORE_NODES = list(i for i in underscore_search(MY_TRIE))

def list_search_main(query):
    """Main list search. Return list of up to 20 words matching query.
       Find prefix node of query and recurse down its subtrie."""

    prefix_node = MY_TRIE.get_prefix_node(query)
    result_list = []

    if prefix_node is not None:
        recurse_trie(prefix_node, query, result_list)

    #Now recurse underscore nodes and append to result_list
    for node, string in ALL_UNDERSCORE_NODES:
        if node.get_prefix_node(query) is not None:
            recurse_trie(node.get_prefix_node(query),
                    string + '_' + query, result_list)

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

if __name__ == "__main__":
    while True:
        try:
            MY_QUERY = str(raw_input("Enter Query (Leave empty to exit) :"))
        except ValueError:
            MY_QUERY = None
        if '_' in MY_QUERY:
            print "Invalid Input. Please use only [A-Za-z0-9]"
        if MY_QUERY is '':
            print "Exiting"
            break
        else:
            print_results(rank(list_search_main(MY_QUERY.lower())))
