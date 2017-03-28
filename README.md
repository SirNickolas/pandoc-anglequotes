# pandoc-anglequotes

A [Pandoc](http://pandoc.org) [filter](http://pandoc.org/scripting) that replaces `<<` and `>>`
ASCII sequences with their Unicode equivalents (*U+00AB* and *U+00BB*, respectively). Implemented
in both Haskell (faster) and Python 2/3 (easier to install).


## Haskell installation

```sh
# Ensure ~/.cabal/bin is in your $PATH.
cabal update
cabal install happy pandoc
make # Or invoke ghc directly.
```


## Python installation

```sh
pip install -Ur requirements.txt
```
