<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.ad.rotate_ad_user_password
Version: 2.3.7

This role rotates the password for an Active Directory user.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2025</li><li>2022</li><li>2019</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |
| community.hashi_vault |
| community.windows |
| microsoft.ad |
| trippsc2.hashi_vault |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| rotate_domain_server | <p>The domain controller to use for the Active Directory user.</p><p>This defaults to the domain controller for the domain.</p> | str | no |  |  |
| rotate_domain_username | <p>The username for accessing the domain controller.</p><p>This defaults to the domain administrator.</p> | str | no |  |  |
| rotate_domain_password | <p>The password for accessing the domain controller.</p><p>This defaults to the domain administrator password.</p> | str | no |  |  |
| vault_url | <p>The URL for accessing HashiCorp Vault.</p><p>Alternatively, this can be configured through ansible.cfg or environment variables.</p><p>If *rotate_use_vault* is `false`, this is ignored.</p> | str | no |  |  |
| vault_token | <p>The token for accessing HashiCorp Vault.</p><p>Alternatively, this (or any other authentication method) can be configured through ansible.cfg or environment variables.</p><p>If *rotate_use_vault* is `false`, this is ignored.</p> | str | no |  |  |
| rotate_use_vault | <p>Whether to use HashiCorp Vault to store the new password.</p> | bool | no |  | True |
| rotate_create_vault_mount_point | <p>Whether to create the HashiCorp Vault mount point, if needed.</p><p>If *rotate_use_vault* is `false`, this is ignored.</p> | bool | no |  | True |
| rotate_force_password_change | <p>Whether to change the password always without checking the age.</p><p>If set to `true`, this role is not idempotent.</p> | bool | no |  | False |
| rotate_vault_mount_point | <p>The mount point for the KV2 secrets engine in HashiCorp Vault.</p><p>If *rotate_use_vault* is `true`, this is required. Otherwise, it is ignored.</p> | str | no |  |  |
| rotate_vault_secret_path | <p>The path to the secret in HashiCorp Vault.</p><p>If *rotate_use_vault* is `true`, this is required. Otherwise, it is ignored.</p> | str | no |  |  |
| rotate_user | <p>The user whose password will be rotated.</p> | str | yes |  |  |
| rotate_new_password | <p>The new password for the user.</p><p>If *rotate_use_vault* is `false`, this is required. Otherwise, the new password will be stored in HashiCorp Vault when rotated.</p> | str | no |  |  |


## License
MIT

## Author and Project Information
Jim Tarpley (@trippsc2)
<!-- END_ANSIBLE_DOCS -->
