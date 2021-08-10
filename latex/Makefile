
all: main introduction acceptors_and_transducers basic_operations \
	advanced_operations differentiable_automata extended_examples

main:
	latexmk -pdf main

introduction: NAME = introduction
acceptors_and_transducers: NAME = acceptors_and_transducers
basic_operations: NAME = basic_operations
advanced_operations: NAME = advanced_operations
differentiable_automata: NAME = differentiable_automata
extended_examples: NAME = extended_examples

introduction acceptors_and_transducers basic_operations advanced_operations differentiable_automata extended_examples: main
	latexmk -pdf main -jobname=m_$(NAME) -pretex="\includeonly{$(NAME)}" -usepretex
	mv m_$(NAME).pdf $(NAME).pdf
	rm m_$(NAME)*

clean:
	rm -f *.pdf *.aux
