<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.linux_member
Version: 2.3.6

This role joins a Linux system to an Active Directory domain.

Before running this role, the system should use be able to resolve the AD domain name and domain controllers via DNS.


## Requirements

| Platform | Versions |
| -------- | -------- |
| Debian | <ul><li>bookworm</li></ul> |
| EL | <ul><li>9</li><li>8</li></ul> |
| Ubuntu | <ul><li>noble</li><li>jammy</li><li>focal</li></ul> |

## Dependencies

| Collection |
| ---------- |
| community.general |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| domjoin_domain_name | <p>The name of the AD domain to which the Linux system will be joined.</p> | str | yes |  |  |
| domjoin_computer_ou | <p>The OU in which the computer account will be created.</p><p>This is the distinguished name of the OU relative to the base of the domain (e.g. `OU=Linux` not `OU=Linux,DC=test,DC=loc`).</p> | str | no |  |  |
| domjoin_domain_user | <p>The user account to be used to authenticate to the AD domain for joining the Linux machine.</p> | str | yes |  |  |
| domjoin_domain_password | <p>The password for the *domjoin_domain_user* user account.</p> | str | yes |  |  |
| domjoin_override_space | <p>The character used to override spaces in AD user or group names.</p> | str | no |  |  |
| domjoin_default_shell | <p>The default shell for domain users.</p> | path | no |  | /bin/bash |
| domjoin_use_fully_qualified_names | <p>Whether to use fully qualified names for domain users and groups.</p> | bool | no |  | True |
| domjoin_fallback_homedir | <p>The template for the home directory of domain users.</p><p>The following variables can be used: %u - the username,  %d - the fully qualified domain name</p> | str | no |  | /home/%u@%d |
| domjoin_enable_gc | <p>Whether to enable the Global Catalog for the domain.</p><p>If disabled, users and groups from trusted domains will not be recognized by the Linux system.</p><p>Disabling the Global Catalog can improve performance when there are many trusted domains.</p> | bool | no |  | False |
| domjoin_gpo_access_control | <p>The access control mode for Group Policy Objects.</p><p>See: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/integrating_rhel_systems_directly_with_windows_active_directory/managing-direct-connections-to-ad_integrating-rhel-systems-directly-with-active-directory#applying-group-policy-object-access-control-in-rhel_managing-direct-connections-to-ad for details.</p> | str | no | <ul><li>disabled</li><li>permissive</li><li>enforcing</li></ul> | disabled |
| domjoin_sudoers_users | <p>A list of domain users who should be added to the sudoers file.</p><p>This should be a list of user names only, not fully qualified names. (e.g. `jdoe` not `TEST\jdoe` or `jdoe@test.loc`)</p><p>Spaces in the user names will be escaped automatically in the config file. (e.g. `jdoe test` becomes `jdoe\ test`)</p><p>Spaces should not be replaced by the *domjoin_override_space* character. (e.g. If *domjoin_override_space* is `_`, use `jdoe test` not `jdoe_test`)</p><p>If *domjoin_use_fully_qualified_names* is `true`, the domain name suffix will be added automatically. (e.g. `jdoe` becomes `jdoe@test.loc`)</p> | list of 'str' | no |  |  |
| domjoin_sudoers_groups | <p>A list of domain groups who should be added to the sudoers file.</p><p>This should be a list of user names only, not fully qualified names. (e.g. `linux` not `TEST\linux` or `linux@test.loc`)</p><p>The group names will be prefixed with a `%` symbol automatically in the config file. (e.g. `linux` becomes `%linux`)</p><p>Spaces in the user names will be escaped automatically in the config file. (e.g. `Domain Admins` becomes `Domain\ Admins`)</p><p>Spaces should not be replaced by the *domjoin_override_space* character. (e.g. If *domjoin_override_space* is `_`, use `Domain Admins` not `Domain_Admins`)</p><p>If *domjoin_use_fully_qualified_names* is `true`, the domain name suffix will be added automatically.</p> | list of 'str' | no |  |  |
| domjoin_add_ssh_allowusers | <p>A list of domain users who should be added to the AllowUsers directive in the SSH configuration.</p><p>This should be a list of user names only, not fully qualified names. (e.g. `jdoe` not `TEST\jdoe` or `jdoe@test.loc`)</p><p>Space characters in the user names will be replaced with the character specified in *domjoin_override_space* automatically. (e.g. If *domjoin_override_space* is `_`, `jdoe test` becomes `jdoe_test`)</p><p>If *domjoin_use_fully_qualified_names* is `true`, the domain name suffix will be added automatically. (e.g. `jdoe` becomes `jdoe@test.loc`)</p><p>If no users are currently in the AllowUsers directive, the directive will **not** be created for safety reasons.</p> | list of 'str' | no |  | [] |
| domjoin_add_ssh_allowgroups | <p>A list of domain groups who should be added to the AllowGroups directive in the SSH configuration.</p><p>This should be a list of user names only, not fully qualified names. (e.g. `Domain Admins` not `TEST\Domain Admins` or `Domain Admins@test.loc`)</p><p>Space characters in the user names will be replaced with the character specified in *domjoin_override_space* automatically. (e.g. If *domjoin_override_space* is `_`, `Domain Admins` becomes `Domain_Admins`)</p><p>If *domjoin_use_fully_qualified_names* is `true`, the domain name suffix will be added automatically.</p><p>If no groups are currently in the AllowGroups directive, the directive will **not** be created.</p> | list of 'str' | no |  | [] |
| domjoin_add_ssh_denyusers | <p>A list of domain users who should be added to the DenyUsers directive in the SSH configuration.</p><p>This should be a list of user names only, not fully qualified names (e.g. `jdoe` not `TEST\jdoe` or `jdoe@test.loc`).</p><p>Space characters in the user names will be replaced with the character specified in *domjoin_override_space* automatically. (e.g. If *domjoin_override_space* is `_`, `jdoe test` becomes `jdoe_test`)</p><p>If *domjoin_use_fully_qualified_names* is `true`, the domain name suffix will be added automatically.</p> | list of 'str' | no |  | [] |
| domjoin_add_ssh_denygroups | <p>A list of domain groups who should be added to the DenyGroups directive in the SSH configuration.</p><p>This should be a list of user names only, not fully qualified names. (e.g. `Domain Admins` not `TEST\Domain Admins` or `Domain Admins@test.loc`)</p><p>Space characters in the user names will be replaced with the character specified in *domjoin_override_space* automatically. (e.g. If *domjoin_override_space* is `_`, `Domain Admins` becomes `Domain_Admins`)</p><p>If *domjoin_use_fully_qualified_names* is `true`, the domain name suffix will be added automatically.</p> | list of 'str' | no |  | [] |


## License
MIT

## Author and Project Information
Jim Tarpley (@trippsc2)
<!-- END_ANSIBLE_DOCS -->
