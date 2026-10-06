#!/bin/bash

echo "========================================"
echo "          INFRAFORGE BACKUP"
echo "========================================"

BACKUP_DIR="/backup"
BACKUP_FILE="$BACKUP_DIR/etc-backup.tar.gz"

echo
echo "### Creating backup directory ###"
mkdir -p "$BACKUP_DIR"

echo
echo "### Creating /etc backup ###"
tar -czf "$BACKUP_FILE" /etc

if [ $? -eq 0 ]; then
    echo "Backup created successfully."
else
    echo "Backup failed."
    exit 1
fi

echo
echo "### Backup Information ###"
ls -lh "$BACKUP_FILE"

echo
echo "### Verifying Backup ###"
if tar -tzf "$BACKUP_FILE" > /dev/null; then
    echo "Backup verification: SUCCESS"
else
    echo "Backup verification: FAILED"
    exit 1
fi

echo
echo "========================================"
echo "       BACKUP COMPLETED SUCCESSFULLY"
echo "========================================"

## NOTE ##
---bash
chmod +x scripts/backup.sh
ls -l scripts/backup.sh
./scripts/backup.sh
