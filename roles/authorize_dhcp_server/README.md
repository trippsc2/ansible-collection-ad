<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.authorize_dhcp_server
Version: 2.1.0

This role authorizes a domain member as a DHCP Server in Active Directory.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies
| Role |
| ---- |
| trippsc2.windows.install_psgallery |

| Collection |
| ---------- |
| ansible.windows |
| community.windows |
| trippsc2.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| dhcp_authorize_servers | <p>The list of DHCP servers to authorize in Active Directory.</p> | list of dicts of 'dhcp_authorize_servers' options | yes |  |  |

### Options for dhcp_authorize_servers
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| dns_name | <p>The DNS name of the DHCP server.</p> | str | yes |  |  |
| ip_address | <p>The IP address of the DHCP server.</p> | str | yes |  |  |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
