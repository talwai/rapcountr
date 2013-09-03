"""Module for constructing serializable JSON Trie structure.
   Function construct_json(filename) reads in file 'filename'
   and builds Trie from word-score pairs. This Trie is then
   encoded using jsonpickle extension library."""

import jsonpickle #Before running, pip install jsonpickle
import trie

def construct_json(filename):
    """Return word-score trie, encoded as JSON"""

    try:  #Open file and read in lines, exit if file does not exist
        with open(filename) as file_in:
            lines = file_in.readlines()
    except IOError:
        exit('File ' + filename + ' does not exist')

    my_trie = trie.Trie()
    #For each line, add data field to JSON object
    for line in lines:
        tokens = line.strip().split(',')
        my_trie.add(tokens[0].lower(), int(tokens[1]) ) #Add all strings as lower-case

    return jsonpickle.encode(my_trie)
