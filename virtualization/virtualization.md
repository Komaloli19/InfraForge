# Virtualization

## 1. Overview

Virtualization allows physical hardware resources to be divided into virtual machines (VMs).

This project uses virtualization to create and manage a Linux server environment without requiring a dedicated physical server.

---

## 2. Hypervisor

| Component           | Configuration |
|---                  |---            |
| Hypervisor          | VMware Workstation |
| Virtual Machine     | RHEL Server |
| Virtualization Type | Type 2 Hypervisor |
| Operating System    | Red Hat Enterprise Linux |
| Network             | Virtual Network Adapter |
| Storage             | Virtual  Disk |

---

## 3. Virtual Machine Configuration

| Resource          | Configuration |
|---                |---            |
| CPU               | 4 vCPU |
| RAM               | 2 GB |
| Storage           | 20 GB Virtual Disk |
| Network Adapter   |  ens160 |
| Operating System  | RHEL |
| Hypervisor        | VMware Workstation |

---

## 4. Virtualization Architecture

```text
Physical Computer
       |
       ↓
VMware Workstation
       |
       ↓
Virtual Machine
       |
       ├── Virtual CPU
       ├── Virtual RAM
       ├── Virtual Disk
       └── Virtual NIC
              |
              ↓
       RHEL Server
