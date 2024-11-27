<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.testing_domain_controller
Version: 2.3.4

This role creates an Active Directory domain on the Windows machine for use during Molecule testing.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |
| community.windows |
| microsoft.ad |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| configure_reverse_lookup_zone | <p>Whether to configure the reverse lookup zone for the domain.</p> | bool | no |  | true |
| dc_initial_dns_servers | <p>List of initial DNS servers to use when creating the domain.</p> | list of 'str' | no |  | ["8.8.8.8", "1.1.1.1"] |
| domain_name | <p>The name of the domain to create.</p> | str | no |  | test.loc |
| dc_safe_mode_password | <p>The password to use for the domain in safe mode.</p> | str | no |  | SecurePassword123! |
| dc_domain_admin_username | <p>The username to which to give all administrative rights for the domain.</p> | str | no |  | vagrant |
| dc_domain_admin_password | <p>The password for the domain admin user.</p><p>If not provided, the domain admin user must already exist.</p> | str | no |  |  |
| domain_base_dn | <p>The base DN for the domain.</p> | str | no |  | DC=test,DC=loc |
| dc_reverse_lookup_zone_network_id | <p>The network ID for the reverse lookup zone to create.</p> | str | no |  | {{ ansible_host | ansible.utils.ipsubnet(24) }} |
| dc_reverse_lookup_zone_name | <p>The name of the reverse lookup zone to create.</p> | str | no |  | {{ (ansible_host | split('.'))[1] }}.{{ (ansible_host | split('.'))[0] }}.in-addr.arpa |
| dc_reverse_lookup_zone_data | <p>The data for the reverse lookup zone.</p> | str | no |  | {{ (ansible_host | split('.'))[3] }}.{{ (ansible_host | split('.'))[2] }} |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
