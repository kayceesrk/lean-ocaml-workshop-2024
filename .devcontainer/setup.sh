#!/usr/bin/env bash
set -e

eval $(opam env)

echo "→ Patching exercise dune files..."

find 01-exercises -mindepth 2 -maxdepth 2 -name "dune" | while read dune_file; do
    # Add (preprocess (pps ppx_jane)) if not already present
    if grep -q "(executable" "$dune_file" && ! grep -q "preprocess" "$dune_file"; then
        sed -i 's/(executable/(executable\n (preprocess (pps ppx_jane))/' "$dune_file"
        echo "  [ppx]     $dune_file"
    fi
done

echo "→ Done patching dune files."