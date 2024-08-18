# Learn OCaml Workshop

This repo contains exercises to help you get started developing in OCaml.

## Installation

### 1. Install the opam package manager

On Linux, macOS, *BSD

```bash
$ bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
$ opam init -ya
$ eval $(opam env)
```
On Windows

```bash
$ wiget install Git.git
$ winget install OCaml.opam
$ opam init -ya
```

### 2. Setup the OCaml development environment and dependencies

```bash
opam install ocaml-lsp-server odoc ocamlformat utop async core js_of_ocaml js_of_ocaml-ppx merlin ocp-indent
```

### 3. Setup the editor

* Install [vscode](https://code.visualstudio.com/).
* Install [vscode ocaml platform](https://marketplace.visualstudio.com/items?itemName=ocamllabs.ocaml-platform).

## Exercises

The directory `01-exercises` contains a number of exercises to get you started
with OCaml. Each one has some expect-tests embedded in it. Get started with

```bash
$ cd 01-exercises
$ dune build
```

And then, for each `<problem_dir>` under `01-exercises`, do:

```bash
$ cd <problem_dir>
$ dune runtest 
```

`dune runtest` builds and runs the inline tests. Look at the test output and
compiler errors, edit `problem.ml` and rerun `dune runtest` until all the tests
pass.

## Documentation and resources

* OCaml
  + [OCaml Programming: Correct + Efficient + Beautiful](https://cs3110.github.io/textbook/cover.html)
  + [Real World OCaml](https://dev.realworldocaml.org/)
  + [OCaml.org](https://ocaml.org/)

## Acknowledgements

Adapted from https://github.com/janestreet/learn-ocaml-workshop.
