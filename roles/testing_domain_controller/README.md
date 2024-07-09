<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.testing_domain_controller
Version: 1.2.6

This role creates an Active Directory domain on the Windows machine for use during Molecule testing.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |
| microsoft.ad |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| dc_initial_dns_servers | <p>List of initial DNS servers to use when creating the domain.</p> | list of 'str' | no |  | ["8.8.8.8", "1.1.1.1"] |
| domain_name | <p>The name of the domain to create.</p> | str | no |  | test.loc |
| dc_safe_mode_password | <p>The password to use for the domain in safe mode.</p> | str | no |  | SecurePassword123! |
| dc_domain_admin_username | <p>The username to which to give all administrative rights for the domain.</p> | str | no |  | vagrant |
| dc_domain_admin_password | <p>The password for the domain admin user.</p><p>If not provided, the domain admin user must already exist.</p> | str | no |  |  |
| domain_base_dn | <p>The base DN for the domain.</p> | str | no |  | DC=test,DC=loc |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
