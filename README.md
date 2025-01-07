# Ansible Collection: trippsc2.ad
This collection contains modules and roles for configuring Active Directory.

## Content

### Roles

- [authorize_dhcp_server](roles/authorize_dhcp_server/README.md) - This role authorizes a domain member as a DHCP Server in Active Directory.
- [domain_controller](roles/domain_controller/README.md) - This role configures the Windows Server machine as an Active Directory Domain Controller.
- [linux_member](roles/linux_member/README.md) - This role joins a Linux system to an Active Directory domain.
- [rotate_ad_user_password](roles/rotate_ad_user_password/README.md) - This role rotates the password for an Active Directory user.
- [testing_domain_controller](roles/testing_domain_controller/README.md) - This role creates an Active Directory domain on the Windows machine for use during Molecule testing.
- [testing_linux_member](roles/testing_linux_member/README.md) - This role joins a Windows machine to a test Active Directory Domain during Molecule testing.
- [testing_standalone_win](roles/testing_standalone_win/README.md) - This role configures DNS on a standalone (non-domain) Windows machine to use the domain controller for DNS and registers its IP address in DNS.
- [testing_win_member](roles/testing_win_member/README.md) - This role joins a Windows machine to a test Active Directory Domain during Molecule testing.
