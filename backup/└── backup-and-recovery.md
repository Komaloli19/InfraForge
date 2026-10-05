# Backup and Recovery

## 1. Backup Overview

This section documents the backup and recovery process used in the RHEL infrastructure lab.

The backup process creates a compressed copy of important server configuration data so that it can be preserved and restored when required.

---

## 2. Backup Directory

A dedicated directory is created to store backup files.

```bash
mkdir -p /backup
ls -ld /backup
tar -tzf /backup/etc-backup.tar.gz
ls -lh /backup/
