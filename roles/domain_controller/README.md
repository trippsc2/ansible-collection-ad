<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.domain_controller
Version: 2.3.7

This role configures the Windows Server machine as an Active Directory Domain Controller.

The following scenarios are supported:
- The server is the first domain controller in a new forest.
- The server is an additional domain controller in an existing domain.

The following scenarios are not supported, but may be added in the future:
- The server is the first domain controller in a child or tree domain in an existing forest.


## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2025</li><li>2022</li><li>2019</li></ul> |

## Dependencies
| Role |
| ---- |
| trippsc2.windows.install_psgallery |

| Collection |
| ---------- |
| ansible.windows |
| community.windows |
| microsoft.ad |
| trippsc2.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| dc_safe_mode_password | <p>The safe mode password for the domain controller.</p> | str | yes |  |  |
| dc_first_domain_controller | <p>Whether the server is the first domain controller in the domain.</p> | bool | no |  | False |
| dc_domain_name | <p>The name of the domain for which the server will serve as domain controller.</p> | str | yes |  |  |
| dc_domain_admin_user | <p>The user account to use for configuring the domain controller.</p><p>If *dc_first_domain_controller* is `true`, this is ignored.</p><p>Otherwise, this is required and the user account must have the necessary permissions to promote the server to a domain controller.</p> | str | no |  |  |
| dc_domain_admin_password | <p>The password for the *dc_domain_admin_user* user account.</p> | str | no |  |  |
| dc_database_path | <p>The path to the database files for the domain controller.</p> | path | no |  | C:\Windows\NTDS |
| dc_domain_log_path | <p>The path to the log files for the domain controller.</p> | path | no |  | C:\Windows\Logs |
| dc_sysvol_path | <p>The path to the SYSVOL files for the domain controller.</p> | path | no |  | C:\Windows\SYSVOL |
| dc_dns_forwarders | <p>A list of DNS forwarder IP addresses for the domain controller.</p> | list of 'str' | no |  | ['8.8.8.8', '4.2.2.2'] |
| dc_dns_servers | <p>A list of DNS server IP addresses for the domain controller.</p> | list of 'str' | yes |  |  |
| dc_is_domain_naming_master | <p>Whether the domain controller should hold the Domain Naming Master FSMO role.</p> | bool | no |  | False |
| dc_is_schema_master | <p>Whether the domain controller should hold the Schema Master FSMO role.</p> | bool | no |  | False |
| dc_is_infrastructure_master | <p>Whether the domain controller should hold the Infrastructure Master FSMO role.</p> | bool | no |  | False |
| dc_is_pdc_emulator | <p>Whether the domain controller should hold the PDC Emulator FSMO role.</p> | bool | no |  | False |
| dc_is_rid_master | <p>Whether the domain controller should hold the RID Master FSMO role.</p> | bool | no |  | False |


## License
MIT

## Author and Project Information
Jim Tarpley (@trippsc2)
<!-- END_ANSIBLE_DOCS -->
