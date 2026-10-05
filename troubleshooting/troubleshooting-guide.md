# Troubleshooting Guide

## 1. Overview

This document describes the troubleshooting methodology used in the IT Infrastructure & Server Build Lab.

The objective is to identify infrastructure problems, determine the root cause, apply an appropriate solution, and verify that the issue
has been resolved.

---

## 2. Troubleshooting Methodology

The following process is used for infrastructure troubleshooting:

1. Identify the problem.
2. Collect system information.
3. Check configuration and service status.
4. Review logs and error messages.
5. Identify the root cause.
6. Apply the appropriate fix.
7. Verify the result.
8. Document the solution.

### General Troubleshooting Flow

```text
Problem
   ↓
Collect Information
   ↓
Check Configuration
   ↓
Check Service / Network / Storage
   ↓
Review Logs
   ↓
Identify Root Cause
   ↓
Apply Fix
   ↓
Verify
   ↓
Document
```

---

## 3. Hostname Troubleshooting

### Problem

The hostname was changed, but the terminal prompt continued to display the previous hostname.

### Diagnostic Commands

```bash
hostname
hostnamectl
cat /etc/hostname
```

### Verification

The configured hostname was verified using:

```bash
hostnamectl
```

Expected configuration:

```text
Static hostname: rhel-infra-01
```

### Resolution

A new shell session can be started to refresh the terminal prompt:

```bash
exec bash
```

### Verification

```bash
hostname
```

The expected hostname is:

```text
rhel-infra-01
```

---

## 4. Network Troubleshooting

### Diagnostic Commands

Check network interfaces:

```bash
ip addr
```

Check network connections:

```bash
nmcli device status
```

Check routing:

```bash
ip route
```

Test connectivity:

```bash
ping -c 4 8.8.8.8
```

### Current Lab Network

```text
Interface: ens160
IPv4 Address: 192.168.46.128/24
Status: Connected
```

## 5. Storage Troubleshooting

### Diagnostic Commands

Display block devices:

```bash
lsblk
```

Check filesystem usage:

```bash
df -h
```

Check LVM volumes:

```bash
lvs
```

Check volume groups:

```bash
vgs
```

Check physical volumes:

```bash
pvs
```

Find large directories:

```bash
du -sh /*

---

## 6. Service Troubleshooting

### Check Service Status

```bash
systemctl status <service>
```

### Start a Service

```bash
systemctl start <service>
```

### Restart a Service

```bash
systemctl restart <service>
```

### Enable Service at Boot

```bash
systemctl enable <service>
```

### Check Service Logs

```bash
journalctl -u <service>
---

## 7. Backup Troubleshooting

### Check Backup File

```bash
ls -lh /backup/
```

### Check Archive Contents

```bash
tar -tzf /backup/etc-backup.tar.gz
```

### Test Backup Integrity

```bash
gzip -t /backup/etc-backup.tar.gz
```

## 8. Problems and Diagnostic Commands

| Problem                   | Diagnostic Command |
|---                        |---                 |
| Hostname issue            | `hostnamectl` |
| Network interface issue   | `ip addr` |
| Network connection issue  | `nmcli device status` |
| Routing issue             | `ip route` |
| Disk space issue          | `df -h` |
| Disk detection issue      | `lsblk` |
| LVM issue                 | `pvs`, `vgs`, `lvs` |
| Service issue             | `systemctl status` |
| Service logs              | `journalctl -u <service>` |
| Backup verification       | `tar -tzf` |

---

## 9. Conclusion

The troubleshooting process used in this lab follows a structured approach based on identification, diagnosis, remediation, and
verification.

This approach helps improve system reliability and provides a
repeatable method for resolving Linux infrastructure problems.
