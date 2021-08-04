## automata_ml

This repo contains source code for [An Introduction to Weighted Automata in
Machine Learning](https://awnihannun.com/writing/machine_learning_automata/).

The latex source is in `latex/` and the Jupyter notebook source in `notebooks`.

### Reference

For citations, please use this BibTex entry:

```
@book{hannun2021,
    title={An Introduction to Weighted Automata in Machine Learning},
    author={Awni Hannun},
    note={\url{https://awnihannun.com/writing/machine_learning_automata/}},
    year={2021}
}
```

### Running Notebooks

To run the notebooks, clone the repo:

```
git clone git@github.com:awni/automata_ml.git
```

Then install [GTN](https://github.com/gtn-org/gtn), the software I use for
constructing graphs:

```
pip install gtn
```

From `notebooks/`, launch the Jupyter server:

```
jupyter notebook
```

This should open a browser window from which you can execute all of the
notebooks.

