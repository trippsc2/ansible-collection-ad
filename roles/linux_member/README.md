<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.linux_member
Version: 1.2.4

This role joins a Linux machine to a Windows domain.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Debian | <ul><li>bullseye</li><li>bookworm</li></ul> |
| EL | <ul><li>8</li><li>9</li></ul> |
| Ubuntu | <ul><li>focal</li><li>jammy</li><li>noble</li></ul> |

## Dependencies

| Collection |
| ---------- |
| community.general |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| domjoin_domain_name | <p>The name of the domain to which the Linux machine will be joined.</p> | str | yes |  |  |
| domjoin_computer_ou | <p>The OU in which the computer account will be created.</p><p>This is the distinguished name of the OU relative to the base of the domain (e.g. 'OU=Linux' not 'OU=Linux,DC=test,DC=loc').</p> | str | no |  |  |
| domjoin_domain_user | <p>The user account to use for joining the Linux machine to the domain.</p> | str | yes |  |  |
| domjoin_domain_password | <p>The password for the domain user account.</p> | str | yes |  |  |
| domjoin_override_space | <p>The character used to override spaces in user or group names.</p> | str | no |  |  |
| domjoin_default_shell | <p>The default shell for domain users.</p> | str | no |  | /bin/bash |
| domjoin_use_fully_qualified_names | <p>Whether to use fully qualified names for domain users and groups.</p> | bool | no |  | true |
| domjoin_fallback_homedir | <p>The fallback home directory for domain users.</p> | str | no |  | /home/%u@%d |
| domjoin_enable_gc | <p>Whether to enable the Global Catalog for the domain.</p><p>If disabled, trust relationships with other domains will not be available, but logins will be faster.</p> | bool | no |  | false |
| domjoin_gpo_access_control | <p>The access control mode for Group Policy Objects.</p><p>See https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/integrating_rhel_systems_directly_with_windows_active_directory/managing-direct-connections-to-ad_integrating-rhel-systems-directly-with-active-directory#applying-group-policy-object-access-control-in-rhel_managing-direct-connections-to-ad for details.</p> | str | no | <ul><li>disabled</li><li>permissive</li><li>enforcing</li></ul> | disabled |
| domjoin_sudoers_users | <p>A list of domain users who should be added to the sudoers file.</p><p>Space characters in the user names will be replaced with the character specified in `domjoin_override_space`.</p> | list of 'str' | no |  |  |
| domjoin_sudoers_groups | <p>A list of domain groups who should be added to the sudoers file.</p><p>Space characters in the user names will be replaced with the character specified in `domjoin_override_space`.</p> | list of 'str' | no |  |  |
| domjoin_add_ssh_allowusers | <p>A list of domain users who should be added to the AllowUsers directive in the SSH configuration.</p><p>Space characters in the user names will be replaced with the character specified in `domjoin_override_space`.</p><p>If no users are currently in the AllowUsers directive, the directive will **not** be created.</p> | list of 'str' | no |  |  |
| domjoin_add_ssh_allowgroups | <p>A list of domain groups who should be added to the AllowGroups directive in the SSH configuration.</p><p>Space characters in the group names will be replaced with the character specified in `domjoin_override_space`.</p><p>If no groups are currently in the AllowGroups directive, the directive will **not** be created.</p> | list of 'str' | no |  |  |
| domjoin_add_ssh_denyusers | <p>A list of domain users who should be added to the DenyUsers directive in the SSH configuration.</p><p>Space characters in the user names will be replaced with the character specified in `domjoin_override_space`.</p> | list of 'str' | no |  |  |
| domjoin_add_ssh_denygroups | <p>A list of domain groups who should be added to the DenyGroups directive in the SSH configuration.</p><p>Space characters in the group names will be replaced with the character specified in `domjoin_override_space`.</p> | list of 'str' | no |  |  |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
