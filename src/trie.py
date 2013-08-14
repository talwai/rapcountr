"""File describing Trie class, along with its add-remove-lookup functions.
   Adapted from the source file here: en.wikipedia.org/wiki/Trie#A_Python_version."""

from collections import defaultdict

class Trie:
    """Class implementation of Trie data structure"""
    def __init__(self):
        self.root = defaultdict(Trie) #dict to hold children
        self.value = None
        self.underscore_root = None #Markers for underscore search
        self.underscore_node = None

    def add(self, string, value):
        """Add the string `s` to the
        `Trie` and map it to the given value."""
        head, tail = string[0], string[1:]
        cur_node = self.root[head]

        if '_' in string:
            self.underscore_root = True

        if head == '_':
            self.underscore_node = cur_node

        if not tail:
            cur_node.value = value
            return  # No further recursion
        self.root[head].add(tail, value)

    def lookup(self, string, default=None):
        """Look up the value corresponding to
        the string `string`. Expand the trie to cache the search."""
        head, tail = string[0], string[1:]
        node = self.root[head]
        if tail:
            return node.lookup(tail)
        return node.value or default

    def remove(self, string):
        """Remove the string 'string' from the Trie.
        Returns *True* if the string was a member."""
        head, tail = string[0], string[1:]
        if head not in self.root:
            return False  # Not contained
        node = self.root[head]
        if tail:
            return node.remove(tail)
        else:
            del node
            return True

    def prefix(self, string):
        """Check whether the string `string` is a prefix
        of some member. Don't expand the trie on negatives (cf.lookup)"""
        if not string:
            return self.value
        head, tail = string[0], string[1:]
        if head not in self.root:
            return False  # Not contained
        node = self.root[head]
        return node.prefix(tail)

    def get_prefix_node(self, string):
        """Find the node representing prefix 'string'.
        Returns *None* is 'string' is not a prefix of any member."""
        node = self
        for char in string:
            if char not in node.root:
                return None
            else:
                node = node.root[char]
        return node


    def items(self):
        """Return an iterator over the items of the `Trie`."""
        for char, node in self.root.iteritems():
            if node.value is None:
                yield node.items()
            else:
                yield node
