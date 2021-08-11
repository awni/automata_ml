## Running notebooks

To run the notebooks, clone the repo:

```
git clone git@github.com:awni/automata_ml.git
```

Then install [GTN](https://github.com/gtn-org/gtn), the software I use for
constructing graphs:

```
pip install gtn
```

Then install [GraphViz](https://graphviz.org/download/), which is required for
visualizing the graphs.

From this directory (`notebooks/`), launch the Jupyter server:

```
jupyter notebook
```

This should open a browser window from which you can execute all of the
notebooks.

## Exporting as HTML

For proper style when exporting HTML, put `custom.css` in `.jupyter/custom/`.
