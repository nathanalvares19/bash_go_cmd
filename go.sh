#!/bin/bash

TARGET="$1"

if [ "$TARGET" = "project1" ]; then
    DEST="path/to/project1"
elif [ "$TARGET" = "project2" ]; then
    DEST="path/to/project2"
elif [ "$TARGET" = "project3" ]; then
    DEST="path/to/project3"
else
    DEST="path/to/default/directory"
fi

cd "$HOME/$DEST" || echo "Directory not found: $HOME/$DEST"