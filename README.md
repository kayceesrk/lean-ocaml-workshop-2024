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
