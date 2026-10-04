# Server Configuration

## 1. Server Overview

This section documents the actual configuration of the Red Hat Enterprise Linux server used in the infrastructure lab.

The server runs as a VMware virtual machine and is configured for Linux system administration, networking, storage, and infrastructure service testing.

---

## 2. Operating System

| Component              | Configuration |
|---                     |---            |
| Operating System       | Red Hat Enterprise Linux 9.4 |
| Architecture           | x86-64 |
| Kernel                 | 5.14.0-427.13.1.el9_4.x86_64 |
| Hostname               | rhel-infra-01 |
| Virtualization         | VMware |

---

## 3. Compute Resources

| Resource | Configuration |
|---       |---            |
| CPU      | 4 vCPU |
| RAM      | 2 GB |

The server is configured with 4 virtual CPUs and 2 GB of RAM.
---

## 4. Storage Configuration

The server uses a 20 GB NVMe virtual disk.

nvme0n1 — 20 GB
│
├── nvme0n1p1 — 600 MB
│   └── /boot/efi
│
├── nvme0n1p2 — 1 GB
│   └── /boot
│
└── nvme0n1p3 — 18.4 GB
    │
    ├── rhel-root — 16.4 GB
    │   └── /
    │
    └── rhel-swap — 2 GB
        └── [SWAP]

## System Verification Commands

The following commands were used to collect and verify the actual server configuration.

Information          |       Command	                      |    Purpose
OS Version	         |      cat /etc/redhat-release	        | Displays the RHEL version
System Information	 |      hostnamectl	                    | Displays hostname, OS, kernel and virtualization information
CPU	                 |       nproc	                        | Shows the number of available CPUs
Memory           	   |      free -h	                        | Displays RAM usage
Storage              |    	lsblk	                          | Displays disks, partitions and LVM volumes
Network	             |      ip addr                        	| Displays network interfaces and IP addresses
