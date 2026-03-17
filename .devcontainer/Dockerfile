FROM ocaml/opam:ubuntu-24.04-ocaml-5.2

# Switch to root to install system deps
USER root
RUN apt-get update && apt-get -y install \
    libunwind-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Back to the default opam user
USER opam

# The base image already has a 5.2 switch ready — just install packages on top
RUN opam update -a && \
    opam install -y \
        dune \
        ocamlformat \
        merlin \
        ocaml-lsp-server \
        utop \
        core \
        base \
        stdio \
        ppx_jane \
        ppx_sexp_conv \
        ppx_compare \
        ppx_hash \
        ppx_deriving \
    && opam clean -a

RUN echo 'eval $(opam env)' >> ~/.bashrc && \
    echo 'eval $(opam env)' >> ~/.profile