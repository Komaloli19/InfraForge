# InfraForge
Practical IT infrastructure and Linux server deployment lab covering hardware planning, virtualization, storage, networking, services, backup, and troubleshooting.

## Project Overview

InfraForge is a practical IT infrastructure lab designed to demonstrate the deployment and administration of a virtualized Linux server environment.

The project follows an infrastructure workflow from hardware and resource planning through virtualization, server configuration, networking, service deployment, backup and recovery, and troubleshooting.

The lab is implemented using VMware Workstation and Red Hat Enterprise Linux 9.4.

---

## Project Objectives

- Plan server hardware and resource requirements
- Deploy a virtualized Linux server
- Configure CPU, memory, storage, and LVM
- Configure Linux networking
- Manage Linux system services
- Implement backup and recovery procedures
- Troubleshoot infrastructure issues
- Document the complete infrastructure environment

---

## Infrastructure Environment

| Component          | Configuration |
|---                 |---            |
| Hypervisor         | VMware Workstation |
| Operating System   | Red Hat Enterprise Linux 9.4 |
| Architecture       | x86-64 |
| Hostname           | rhel-infra-01 |
| CPU                | 4 vCPU |
| RAM                | 2 GB |
| Storage            | 20 GB NVMe virtual disk |
| Storage Management | LVM |
| Network Interface  | ens160 |
| IP Address         | 192.168.1.10/24 |
| Network            | 192.168.1.0/24 |

---

## Infrastructure Architecture

```text
                    Physical Computer
                           |
                           ↓
                  VMware Workstation
                           |
                           ↓
                   RHEL Server VM
                           |
              +------------+------------+
              |            |            |
              ↓            ↓            ↓
           Hardware      Network      Storage
           Resources     ens160       20 GB
              |            |            |
              +------------+------------+
                           |
                           ↓
                       Services
                           |
                           ↓
                        Backup
                           |
                           ↓
                    Troubleshooting
