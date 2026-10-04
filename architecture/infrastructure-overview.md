# Infrastructure Overview

## 1. Project Overview

This project demonstrates the design and deployment of a virtualized Linux server infrastructure using VMware Workstation and Red Hat Enterprise Linux (RHEL).

The lab is designed to simulate a small-scale IT infrastructure environment and demonstrate practical system administration concepts.

---

## 2. Infrastructure Architecture

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
