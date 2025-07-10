#!/bin/sh

echo "**Backup Script**"

SOURCE=$1
BACKUP_DIR=$2


BACKUP_FILE="$BACKUP_DIR/backup_$(date +%y%m%d).tar.gz"
mkdir -p "$BACKUP_DIR"


if [ -d "$SOURCE" ]; then
  echo "Backing up Directory: $SOURCE"
  tar -czf "$BACKUP_FILE" -C "$SOURCE" .
else
  echo "Source input is not a directory: $SOURCE"
  exit 1
fi

