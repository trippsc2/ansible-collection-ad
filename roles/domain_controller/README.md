<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.domain_controller
Version: 1.2.0

This role configures the Windows Server machine as an Active Directory Domain Controller.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |
| community.hashi_vault |
| community.windows |
| microsoft.ad |
| trippsc2.hashi_vault |
| trippsc2.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| dc_vault_create_mount_point | <p>Whether to create the KV version 2 mount point in HashiCorp Vault for the safe mode password.</p> | bool | no |  | true |
| dc_vault_managed_safe_mode_password | <p>Whether to manage the safe mode password in HashiCorp Vault.</p> | bool | no |  | true |
| dc_vault_safe_mode_mount_point | <p>The KV version 2 mount point in HashiCorp Vault for the safe mode password.</p> | str | no |  | os |
| dc_vault_safe_mode_path | <p>The path within the mount point in HashiCorp Vault for the safe mode password.</p> | str | no |  | {{ inventory_hostname }}/safe_mode |
| dc_safe_mode_password | <p>The safe mode password for the domain controller.</p><p>If `dc_vault_managed_safe_mode_password` is `true`, this value is ignored.</p> | str | no |  |  |
| dc_first_domain_controller | <p>Whether the server is the first domain controller in the domain.</p> | bool | no |  | false |
| dc_domain_name | <p>The name of the domain to which the domain controller will belong.</p> | str | yes |  |  |
| dc_domain_admin_user | <p>The user account to use for configuring the domain controller.</p> | str | yes |  |  |
| dc_domain_admin_password | <p>The password for the user account to use for configuring the domain controller.</p> | str | yes |  |  |
| dc_database_path | <p>The path to the database files for the domain controller.</p> | path | no |  | C:\Windows\NTDS |
| dc_domain_log_path | <p>The path to the log files for the domain controller.</p> | path | no |  | C:\Windows\Logs |
| dc_sysvol_path | <p>The path to the SYSVOL files for the domain controller.</p> | path | no |  | C:\Windows\SYSVOL |
| dc_dns_forwarders | <p>A list of DNS forwarders for the domain controller.</p> | list of 'str' | no |  | ["8.8.8.8", "4.2.2.2"] |
| dc_dns_servers | <p>A list of DNS servers for the domain controller.</p> | list of 'str' | yes |  |  |
| dc_is_domain_naming_master | <p>Whether the domain controller is the domain naming master.</p> | bool | no |  | false |
| dc_is_schema_master | <p>Whether the domain controller is the schema master.</p> | bool | no |  | false |
| dc_is_infrastructure_master | <p>Whether the domain controller is the infrastructure master.</p> | bool | no |  | false |
| dc_is_pdc_emulator | <p>Whether the domain controller is the PDC emulator.</p> | bool | no |  | false |
| dc_is_rid_master | <p>Whether the domain controller is the RID master.</p> | bool | no |  | false |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
