<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.testing_domain_member
Version: 1.2.6

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
| non_domain_user | <p>The user from which to run the Ansible tasks before joining the domain.</p> | str | no |  | vagrant |
| dc_inventory_name | <p>The Ansible inventory name of the test domain controller.</p> | str | no |  | dc |
| dc_ip_address | <p>The IP address of the test domain controller.</p> | str | no |  | {{ hostvars[dc_inventory_name].ansible_host }} |
| domain_name | <p>The name of the domain to join.</p> | str | no |  | test.loc |
| domain_join_username | <p>The username to use to join the domain.</p> | str | no |  | vagrant@{{ domain_name }} |
| domain_join_password | <p>The password to use to join the domain.</p> | str | no |  | vagrant |
| domain_join_hostname | <p>The hostname of the joining machine.</p> | str | no |  | {{ inventory_hostname }} |
| dc_copy_ssh_key_from_local_user | <p>Whether to create a profile for the domain user and copy the SSH key from the local user.</p> | bool | no |  | true |
| dns_register_host | <p>Whether to register the hostname in DNS.</p> | bool | no |  | true |
| dns_ip_address | <p>The IP address to register in DNS.</p> | str | no |  | {{ ansible_host }} |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
