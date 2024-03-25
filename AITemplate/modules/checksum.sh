#!/bin/bash

echo "Create Checksums"

for file in *.so *.so.xz; do
    echo "$file"
    sha256sum "$file"
done > checksums.txt