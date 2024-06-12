<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.domain_controller
Version: 1.0.0

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
| trippsc2.general |
| trippsc2.hashi_vault |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| dc_vault_create_mount_point | Whether to create the KV version 2 mount point in HashiCorp Vault for the safe mode password. | bool | no |  | true |
| dc_vault_managed_safe_mode_password | Whether to manage the safe mode password in HashiCorp Vault. | bool | no |  | true |
| dc_vault_safe_mode_mount_point | The KV version 2 mount point in HashiCorp Vault for the safe mode password. | str | no |  | os |
| dc_vault_safe_mode_path | The path within the mount point in HashiCorp Vault for the safe mode password. | str | no |  | {{ inventory_hostname }}/safe_mode |
| dc_safe_mode_password | The safe mode password for the domain controller. If `dc_vault_managed_safe_mode_password` is `true`, this value is ignored. | str | no |  |  |
| dc_first_domain_controller | Whether the server is the first domain controller in the domain. | bool | no |  | false |
| dc_domain_name | The name of the domain to which the domain controller will belong. | str | yes |  |  |
| dc_domain_admin_user | The user account to use for configuring the domain controller. | str | yes |  |  |
| dc_domain_admin_password | The password for the user account to use for configuring the domain controller. | str | yes |  |  |
| dc_database_path | The path to the database files for the domain controller. | path | no |  | C:\Windows\NTDS |
| dc_domain_log_path | The path to the log files for the domain controller. | path | no |  | C:\Windows\Logs |
| dc_sysvol_path | The path to the SYSVOL files for the domain controller. | path | no |  | C:\Windows\SYSVOL |
| dc_dns_forwarders | A list of DNS forwarders for the domain controller. | list of 'str' | no |  | ["8.8.8.8", "4.2.2.2"] |
| dc_dns_servers | A list of DNS servers for the domain controller. | list of 'str' | yes |  |  |
| dc_is_domain_naming_master | Whether the domain controller is the domain naming master. | bool | no |  | false |
| dc_is_schema_master | Whether the domain controller is the schema master. | bool | no |  | false |
| dc_is_infrastructure_master | Whether the domain controller is the infrastructure master. | bool | no |  | false |
| dc_is_pdc_emulator | Whether the domain controller is the PDC emulator. | bool | no |  | false |
| dc_is_rid_master | Whether the domain controller is the RID master. | bool | no |  | false |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
