<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.linux_member
Version: 1.1.0

This role joins a Linux machine to a Windows domain.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Debian | <ul><li>bullseye</li><li>bookworm</li></ul> |
| EL | <ul><li>8</li></ul> |
| Ubuntu | <ul><li>focal</li><li>jammy</li><li>noble</li></ul> |

## Dependencies

| Collection |
| ---------- |
| community.general |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| domjoin_domain_name | The name of the domain to which the Linux machine will be joined. | str | yes |  |  |
| domjoin_computer_ou | The OU in which the computer account will be created. This is the distinguished name of the OU relative to the base of the domain (e.g. 'OU=Linux' not 'OU=Linux,DC=test,DC=loc'). | str | no |  |  |
| domjoin_domain_user | The user account to use for joining the Linux machine to the domain. | str | yes |  |  |
| domjoin_domain_password | The password for the domain user account. | str | yes |  |  |
| domjoin_override_space | The character used to override spaces in user or group names. | str | no |  |  |
| domjoin_default_shell | The default shell for domain users. | str | no |  | /bin/bash |
| domjoin_use_fully_qualified_names | Whether to use fully qualified names for domain users and groups. | bool | no |  | true |
| domjoin_fallback_homedir | The fallback home directory for domain users. | str | no |  | /home/%u@%d |
| domjoin_enable_gc | Whether to enable the Global Catalog for the domain. If disabled, trust relationships with other domains will not be available, but logins will be faster. | bool | no |  | false |
| domjoin_gpo_access_control | The access control mode for Group Policy Objects. See https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/integrating_rhel_systems_directly_with_windows_active_directory/managing-direct-connections-to-ad_integrating-rhel-systems-directly-with-active-directory#applying-group-policy-object-access-control-in-rhel_managing-direct-connections-to-ad for details. | str | no | <ul><li>disabled</li><li>permissive</li><li>enforcing</li></ul> | disabled |
| domjoin_sudoers_users | A list of domain users who should be added to the sudoers file. Space characters in the user names will be replaced with the character specified in `domjoin_override_space`. | list of 'str' | no |  |  |
| domjoin_sudoers_groups | A list of domain groups who should be added to the sudoers file. Space characters in the user names will be replaced with the character specified in `domjoin_override_space`. | list of 'str' | no |  |  |
| domjoin_add_ssh_allowusers | A list of domain users who should be added to the AllowUsers directive in the SSH configuration. Space characters in the user names will be replaced with the character specified in `domjoin_override_space`. If no users are currently in the AllowUsers directive, the directive will **not** be created. | list of 'str' | no |  |  |
| domjoin_add_ssh_allowgroups | A list of domain groups who should be added to the AllowGroups directive in the SSH configuration. Space characters in the group names will be replaced with the character specified in `domjoin_override_space`. If no groups are currently in the AllowGroups directive, the directive will **not** be created. | list of 'str' | no |  |  |
| domjoin_add_ssh_denyusers | A list of domain users who should be added to the DenyUsers directive in the SSH configuration. Space characters in the user names will be replaced with the character specified in `domjoin_override_space`. | list of 'str' | no |  |  |
| domjoin_add_ssh_denygroups | A list of domain groups who should be added to the DenyGroups directive in the SSH configuration. Space characters in the group names will be replaced with the character specified in `domjoin_override_space`. | list of 'str' | no |  |  |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
