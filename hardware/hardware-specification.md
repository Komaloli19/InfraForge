# Hardware Specification

## 1. Server Overview

This project uses a virtualized Linux server environment designed to demonstrate practical IT infrastructure, server deployment, and system administration.

| Component                       | Specification |
|---                              |---            |
| **Server Type**                 | Virtual Server |
| **Operating System**            | Red Hat Enterprise Linux (RHEL) 9.4 |
| **Hypervisor**                  | VMware Workstation |
| **CPU**                         | 4 vCPU |
| **CPU Architecture**            | x86-64 |
| **RAM**                         | 2 GiB |
| **Storage**                     | 20 GB NVMe Virtual Disk |
| **Storage Management**          | LVM |
| **Network Adapter**             | ens160 |
| **Network Type**                | Ethernet |
| **Network Configuration**       | IPv4 |
| **IP Address**                  | 192.168.1.10/24|
| **Hostname**                    | rhel-infra-01 |
| **Virtualization**              | Full Virtualization |
| **Purpose**                     | Linux Server Administration & Infrastructure Lab |
| **Environment**                 | Development / Lab |
---

## 2. CPU

### Purpose

The CPU is responsible for processing operating system tasks,applications, and server workloads.

### Selected Configuration

- CPU Cores:  4 
- Architecture: x86-64
- Virtual CPU: 4 vCPU

### Why it is required

Multiple CPU cores allow the server to handle multiple processes and services efficiently.

---

## 3. RAM

### Purpose

RAM provides temporary working memory for the operating system, applications, and active processes.

### Selected Configuration

- RAM: 2 GiB

### Why it is required

Sufficient RAM is important for running the operating system, server services, and virtual workloads smoothly.

---

## 4. Storage

### Storage Configuration

| Storage Type    | Capacity           | Purpose |
|---              |---:                |---       |
| Primary Disk    | 20 GB              | Operating System, applications, and system data |
| Additional Disk  | Not configured    | Future application/data storage |

### Storage Considerations

- Capacity
- Performance
- Reliability
- Backup
- Future expansion

---

## 5. Network Interface

The server requires a network interface to communicate with other systems and provide network-based services.

### Configuration

- Network Adapter: ens160
- Connection Type: Ethernet
- Speed: VMware Virtual Ethernet Adapter
- IP Address: 192.168.10.1/24
- Network Status: Connected

---

## 6. Physical Infrastructure Considerations

For a physical server, the power supply should provide sufficient capacity for the CPU, memory, storage, and expansion devices.

For production environments, redundant power supplies can improve availability.

---

## 7. BIOS / UEFI

Important firmware settings include:

- Boot order
- UEFI boot mode
- Virtualization support
- Secure Boot
- Hardware detection
- TPM configuration where applicable

---

## 8. Virtualization Architecture

The server environment is implemented using VMware virtualization.

### Virtualization Flow

Hardware
↓
VMware Hypervisor
↓
Virtual Machine
↓
RHEL
↓
Server Services

---

## 9. Backup Planning

Important server data should be protected using a backup strategy.

### Backup considerations

- Regular backups
- Multiple backup copies
- Off-site/cloud copy
- Backup verification
- Recovery testing

The 3-2-1 backup principle can be used:

- 3 copies of data
- 2 different storage media
- 1 off-site copy

---

## 10. Hardware Troubleshooting

Common infrastructure issues include:

- Server not powering on
- RAM detection failure
- Storage failure
- Network adapter failure
- Overheating
- Boot failure
- Disk capacity issues
- Virtual machine performance problems

Each issue should be investigated systematically before applying a fix.
