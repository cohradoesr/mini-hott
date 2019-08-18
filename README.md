Mini-HoTT (another library for Univalent Foundations in Agda (WIP))
------------------------------------------------------------------

The goal of this library is to provide the basis to learn and to use homotopy
type theory (HoTT) to formalize mathematics. There are many other libraries
about this topic and in which we have based this developed, we point you to a
partial list in Section References on the
[website](http://github.com/jonaprieto/mini-hott).

- Comments to improve this work are really welcomed.

### Build website

The website can serve using only the 'docs' directory.
Other files in this repository are to generate this folder `docs`.

- To build it use `make docs-build`.

- To serve it use `make docs-serve`.

- To generate the static files from sources, use `make statics`. You should
have installed Ipe.

- To generate latex files of Agda codes, use `make latex`.
