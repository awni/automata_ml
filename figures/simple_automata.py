import gtn
import os

base = "notebooks/figures/"

g = gtn.Graph()
g.add_node()
g.add_node()
g.add_node()

g.add_arc(0, 1, 0)
g.add_arc(1, 2, 1)
g.add_arc(2, 0, 2)

gtn.draw(g, os.path.join(base, "simple_automata.svg"), isymbols={0: 'a', 1: 'b', 2: 'c'})

dfa = gtn.Graph()
dfa.add_node()
dfa.add_node()
dfa.add_node()
dfa.add_arc(0, 1, 0)
dfa.add_arc(0, 1, 1)
dfa.add_arc(1, 2, 1)
dfa.add_arc(1, 2, 2)
dfa.add_arc(2, 0, 0)
dfa.add_arc(2, 0, 2)

gtn.draw(dfa, os.path.join(base, "simple_dfa.svg"), isymbols={0: 'a', 1: 'b', 2: 'c'})

nfa = gtn.Graph()
nfa.add_node()
nfa.add_node()
nfa.add_node()
nfa.add_arc(0, 1, 0)
nfa.add_arc(0, 2, 0)
nfa.add_arc(1, 2, 1)
nfa.add_arc(1, 0, 1)
nfa.add_arc(2, 0, 2)
nfa.add_arc(2, 1, 2)

gtn.draw(nfa, os.path.join(base, "simple_nfa.svg"), isymbols={0: 'a', 1: 'b', 2: 'c'})
