# Component Selection

## 1. Overview

This document explains the selection of the main infrastructure components used in the IT Infrastructure & Server Build Lab.

The environment is designed as a virtualized Linux server lab for practicing server deployment, system administration, networking, storage management, and troubleshooting.

---

## 2. CPU Selection

### Selected Configuration

| Specification | Configuration |
|---            |---            | 
| Virtual CPU   | 4 vCPU |
| Architecture  | x86-64 |
| Hypervisor    | VMware |

### Reason for Selection

4 vCPU provides sufficient processing capacity for the RHEL server and the infrastructure services used in this lab.

The allocated CPU resources are suitable for development, testing, system administration exercises, and lightweight server workloads.

---

## 3. Memory Selection

### Selected Configuration

| Specification | Configuration |
|---            |---            |
| RAM           | 2 GiB |

### Reason for Selection

The current memory allocation is suitable for the lightweight RHEL administration environment used in this lab.

For production workloads, memory requirements should be determined based on the applications and services being deployed.

---

## 4. Storage Selection

### Selected Configuration

| Specification           | Configuration |
|---                      |---            |
| Primary Disk            | 20 GB |
| Disk Type               | Virtual NVMe Disk |
| Storage Management      | LVM |

### Reason for Selection

The 20 GB virtual disk provides sufficient storage for the current RHEL infrastructure lab.

LVM was selected because it provides flexible logical storage management and allows storage volumes to be managed independently.

The current environment uses a single virtual disk. Additional disks can be added later for application data, backups, or storage testing.

---

## 5. Network Component Selection

### Selected Configuration

| Specification            | Configuration |
|---                       |---            |
| Network Interface        | ens160 |
| Interface Type           | Ethernet |
| IPv4 Address             | 192.168.1.10/24 |
| Network Management       | NetworkManager |

### Reason for Selection

The `ens160` Ethernet interface provides network connectivity for the RHEL server.

NetworkManager is used to manage the network connection and configuration.

The network configuration allows the server to communicate with other systems within the lab environment.

---

## 6. Operating System Selection

### Selected Operating System

**Red Hat Enterprise Linux 9.4**

### Reason for Selection

RHEL was selected because it provides an enterprise Linux environment suitable for practicing:

- Linux system administration
- User and group management
- File permissions
- Storage management
- Networking
- Service management
- Security configuration
- SELinux
- Firewall management
- Package management
- Server deployment

The RHEL environment also provides practical experience with enterprise Linux administration tools and concepts.

---

## 7. Virtualization Platform Selection

### Selected Platform

**VMware**

### Reason for Selection

VMware provides an isolated virtual environment where CPU, memory, storage, and networking resources can be allocated to the RHEL server.

Virtualization makes it possible to build and test infrastructure configurations without requiring a dedicated physical server.

It also allows the lab environment to be modified, tested, and rebuilt safely.

---

## 8. Component Selection Summary

| Component                  | Selected Configuration      | Purpose |
|---                         |---                          |---       |
| CPU                        | 4 vCPU                      | Server processing |
| RAM                        | 2 GiB                       | Operating system and applications |
| Storage                    | 20 GB virtual NVMe disk     | RHEL and lab data |
| Storage Management         | LVM                         | Flexible storage management |
| Network                    | ens160 Ethernet             | Network connectivity |
| Operating System           | RHEL 9.4                    | Enterprise Linux server |
| Hypervisor                 | VMware                      | Virtualized infrastructure |
| Environment                | Development / Lab           | Testing and administration practice |

---

## 9. Future Improvements

The infrastructure can be expanded in future iterations with:

- Additional virtual disks
- Increased RAM
- Additional network interfaces
- Dedicated application/data storage
- Backup storage
- Monitoring
- RAID testing using multiple virtual disks
- High-availability configuration
- Additional RHEL server nodes

---

## 10. Selection Principles

The components were selected based on the following principles:

1. **Practicality** – Resources should be sufficient for the lab workload.
2. **Scalability** – The environment should allow future resource expansion.
3. **Reliability** – Infrastructure should be configured using appropriate enterprise practices.
4. **Manageability** – Components should be easy to configure and administer.
5. **Cost Efficiency** – Virtualization allows infrastructure practice without dedicated physical server hardware.
