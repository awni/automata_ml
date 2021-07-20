import gtn

g = gtn.Graph()
g.add_node()
g.add_node()
g.add_node()

g.add_arc(0, 1, 0)
g.add_arc(1, 2, 1)
g.add_arc(2, 0, 2)

gtn.draw(g, "simple_automata.svg", isymbols={0: 'a', 1: 'b', 2: 'c'})
