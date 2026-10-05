# Services Deployment

## 1. Service Overview

This section documents the Linux services configured on the RHEL server.

The first infrastructure service configured is OpenSSH, which provides secure remote administration of the server.

---

## 2. OpenSSH Service

OpenSSH provides secure remote access and administration of the RHEL server.

### Service

```text
sshd

## 3.Service Management Commands (systemctl)
systemctl start sshd
systemctl stop sshd
systemctl restart sshd
systemctl status sshd
