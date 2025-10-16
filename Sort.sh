#!/bin/bash

DOWNLOADS_DIR="/home/hemanth/Downloads"
SORTED_DIR="$DOWNLOADS_DIR/Sorted"

if [ ! -d "$DOWNLOADS_DIR" ]; then
	echo "Downloads folder not found at $DOWNLOADS_DIR"
	exit 1
fi

mkdir -p "$SORTED_DIR"

for FILE in "$DOWNLOADS_DIR"/*; do
	[ -f "$FILE" ] || continue

	FILENAME=$(basename "$FILE")
	EXT="${FILENAME##*.}"
	
	if [ "$FILENAME" = "$EXT" ]; then
		EXT="no_extension"
	fi

	TARGET_DIR="$SORTED_DIR/${EXT,,}" 
	mkdir -p "$TARGET_DIR"

	mv -n "$FILE" "$TARGET_DIR/"
	echo "Moved: $FILENAME --> $TARGET_DIR/"
done

echo "_______________________________________"
echo "ALL FILES HAVE BEEN SORTED INTO $SORTED_DIR"
