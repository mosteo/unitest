#!/bin/bash

find . -name '*.ali' -o -name '*.obj' -o -name '*.a' | xargs rm -f
echo "=== Regular Binding ==="
UNIMODE=none alr -q run

find . -name '*.ali' -o -name '*.obj' -o -name '*.a' | xargs rm -f
echo
echo "=== -Wb ==="
UNIMODE=xxx alr -q run
