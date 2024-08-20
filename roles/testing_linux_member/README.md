<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.testing_linux_member
Version: 2.1.0

This role joins a Windows machine to a test Active Directory Domain during Molecule testing.

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
| dc_inventory_name | <p>The Ansible inventory name of the test domain controller.</p> | str | no |  | dc |
| dc_ip_address | <p>The IP address of the test domain controller.</p> | str | no |  | {{ hostvars[dc_inventory_name].ansible_host }} |
| domain_name | <p>The name of the domain to join.</p> | str | no |  | test.loc |
| domain_join_username | <p>The username to use to join the domain.</p> | str | no |  | vagrant |
| domain_join_password | <p>The password to use to join the domain.</p> | str | no |  | vagrant |
| domain_join_hostname | <p>The hostname of the joining machine.</p> | str | no |  | {{ inventory_hostname }} |
| dns_register_host | <p>Whether to register the hostname in DNS.</p> | bool | no |  | true |
| dns_ip_address | <p>The IP address to register in DNS.</p> | str | no |  | {{ ansible_host }} |
| dns_register_reverse_host | <p>Whether to register the reverse hostname in DNS.</p> | bool | no |  | true |
| dns_reverse_zone | <p>The reverse DNS zone to register the reverse hostname in.</p> | str | no |  | {{ (dns_ip_address | split('.'))[2] }}.{{ (dns_ip_address | split('.'))[1] }}.{{ (dns_ip_address | split('.'))[0] }}.in-addr.arpa |
| dns_reverse_name | <p>The reverse DNS name to register.</p> | str | no |  | {{ (dns_ip_address | split('.'))[3] }} |
| dns_reverse_value | <p>The reverse DNS value to register.</p> | str | no |  | {{ inventory_hostname }}.{{ domain_name }} |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
