#!/bin/sh

# $1 - datarootdir path
# $2 - where to install it to

filename="tl-datarootdir"

cat > "$2/$filename" << EOF
#!/usr/bin/env bash
printf '%b' "$1"
EOF

chmod +x "$2/$filename"
