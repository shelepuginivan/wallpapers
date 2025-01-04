#!/bin/sh

if [ -z "$1" ]; then
    exit 1
fi

PREVIEW="PREVIEW.md"
BASENAME="$(basename "$1")"
THUMBNAIL=".github/thumbnails/$BASENAME"

if [ ! -f "$THUMBNAIL" ]; then
    magick "$1" -strip -resize 1012 "$THUMBNAIL"
fi

echo "[![$BASENAME]($THUMBNAIL)]($1)" >> "$PREVIEW"
