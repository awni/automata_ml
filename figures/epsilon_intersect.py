import gtn
import os

base = "notebooks/figures"

symbols = {0: 'a', 1: 'b'}

g1 = gtn.Graph()
g1.add_node()
g1.add_node()
g1.add_node()
g1.add_arc(0, 1, 0, 0, 1)
g1.add_arc(0, 2, gtn.epsilon, gtn.epsilon, 2)

g2 = gtn.Graph()
g2.add_node()
g2.add_node()
g2.add_arc(0, 1, 0, 0, 1)

gtn.draw(g1, os.path.join(base, "epsilon_intersect_1.svg"), isymbols=symbols)
gtn.draw(g2, os.path.join(base, "epsilon_intersect_2.svg"), isymbols=symbols)
