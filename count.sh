#!/bin/bash

DIRECTORY="${1:-.}"

if [ ! -d "$DIRECTORY" ]; then
    echo "Erreur : le dossier '$DIRECTORY' n'existe pas"
    exit 1
fi

TOTAL_LINES=$(find "$DIRECTORY" -type f ! -path '*/\.git/*' -exec cat {} + | wc -l)

echo "Nombre total de lignes de code    : $TOTAL_LINES"
