#!/bin/bash

echo "Create checksums and file sizes"

# Redirect output to 'checksums.txt'
exec > checksums.txt

for file in *.so *.so.xz; do
    echo "$file"
    # Check if the file is compressed (.so.xz)
    if [[ $file == *.xz ]]; then
        # Get and print compressed size in bytes
        compressed_size=$(ls -l "$file" | awk '{print $5}')
        echo "  \"compressed_size\": $compressed_size"
        # Use xz to list the uncompressed size, then awk to parse the 'Uncompressed size' line, removing commas
        uncompressed_size=$(xz --list "$file" | grep 'Uncompressed size' | head -1 | awk '{print $5}' | tr -d ',')
        echo "  \"size\": $uncompressed_size"
        # Get and print SHA256 checksum for the compressed file
        compressed_sha256=$(sha256sum "$file" | awk '{print $1}')
        echo "    \"compressed_sha256\": \"$compressed_sha256\""
    else
        # For uncompressed files (.so), just show their size and SHA256 checksum
        size=$(ls -l "$file" | awk '{print $5}')
        echo "  \"size\": $size"
        sha256=$(sha256sum "$file" | awk '{print $1}')
        echo "    \"sha256\": \"$sha256\""
    fi
done