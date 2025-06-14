<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.testing_standalone_win
Version: 2.4.2

This role configures DNS on a standalone (non-domain) Windows machine to use the domain controller for DNS and registers its IP address in DNS.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>all</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| dc_inventory_name | <p>The Ansible inventory name of the test domain controller.</p> | str | no |  | dc |
| dc_ip_address | <p>The IP address of the test domain controller.</p> | str | no |  | {{ hostvars[dc_inventory_name].ansible_host }} |
| domain_name | <p>The name of the domain to join.</p> | str | no |  | test.loc |
| dns_host_name | <p>The hostname of the DNS server.</p> | str | no |  | {{ inventory_hostname }} |
| dns_ip_address | <p>The IP address of the DNS server.</p> | str | no |  | {{ ansible_host }} |


## License
MIT

## Author and Project Information
Jim Tarpley (@trippsc2)
<!-- END_ANSIBLE_DOCS -->
