#!/bin/bash

# Get the project root directory (parent of scripts directory)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Claude directory
CLAUDE_DIR="$HOME/.claude"

# List file location
LIST_FILE="$PROJECT_ROOT/list_file.txt"

# Check if list file exists
if [ ! -f "$LIST_FILE" ]; then
    echo "Error: $LIST_FILE not found!"
    exit 1
fi

# Create claude directory if it doesn't exist
mkdir -p "$CLAUDE_DIR"

# Read each line from list_file.txt
while IFS= read -r file_path || [ -n "$file_path" ]; do
    # Skip empty lines and comments (lines starting with #)
    if [ -z "$file_path" ] || [[ "$file_path" =~ ^# ]]; then
        continue
    fi

    # Source file path (from ~/.claude/)
    SOURCE_FILE="$CLAUDE_DIR/$file_path"

    # Destination file path (to project directory)
    DEST_FILE="$PROJECT_ROOT/$file_path"

    # Check if source file exists
    if [ -f "$SOURCE_FILE" ]; then
        # Create destination directory if needed
        DEST_DIR="$(dirname "$DEST_FILE")"
        mkdir -p "$DEST_DIR"

        # Copy the file
        cp "$SOURCE_FILE" "$DEST_FILE"
        echo "✓ Copied: $file_path (from ~/.claude/ to project)"
    else
        echo "✗ Not found: $file_path"
    fi
done < "$LIST_FILE"

echo "Copy operation completed."