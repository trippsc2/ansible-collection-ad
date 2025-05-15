# Changelog

All notable changes to this project will be documented in this file.

## [2.3.6] - 2025-05-15

### Role - linux_member

- Changed OS validation.

## [2.3.5] - 2025-01-07

### Collection

- Added Changelog.
- Updated collection README documentation.

### Role - domain_controller

- Removed unnecessary validation task for `dc_safe_mode_password` variable that is handled by role argument spec.

## [2.3.4] - 2024-11-27

### Role - domain_controller

- Removed the value of `dc_safe_mode_password` from the output of the validation step for better security. This was added by mistake previously.

## [2.3.3] - 2024-10-22

### Role - authorize_dhcp_server

- Removed `os_family` subset from fact gathering step, as it does not apply to Windows systems.

### Role - domain_controller

- Removed `os_family` subset from fact gathering step, as it does not apply to Windows systems.

## [2.3.2] - 2024-09-23

### Role - rotate_ad_user_password

- Added the `run_once` parameter to the password rotation step to prevent the password being reset multiple times in succession.

## [2.3.1] - 2024-09-17

### Role - rotate_ad_user_password

- Changed the role from using the `name` parameter to using the `identity` parameter for identifying the user whose password is to be rotated.

## [2.3.0] - 2024-09-17

### Collection

- *rotate_ad_user_password* role added.

## [2.2.3] - 2024-09-06

### Role - domain_controller

- Added `no_log` to the `dc_safe_mode_password` and `dc_domain_admin_password` variables.

### Role - linux_member

- Added `no_log` to the `domjoin_domain_password` variable.

### Role - testing_domain_controller

- Added `no_log` to the `dc_safe_mode_password` and `dc_domain_admin_password` variables.

### Role - testing_linux_member

- Added `no_log` to the `domain_join_password` variable.

### Role - testing_win_member

- Added `no_log` to the `domain_join_password` variable.

## [2.2.2] - 2024-09-05

### Collection

- Removed unneeded dependency reference to **community.hashi_vault** collection.
- Removed unneeded dependency reference to **trippsc2.hashi_vault** collection.
- Reduced the version requirement for **community.windows** collection from `>=1.11.0` to `>=1.0.1`.

## [2.2.1] - 2024-09-05

### Role - domain_controller

- Removed validation that applied to storing the safe mode password in HashiCorp Vault.

## [2.2.0] - 2024-09-05

### Role - domain_controller

- Removed support for managing the safe mode password using HashiCorp Vault directly within the role.  Instead, the safe mode password should be stored in HashiCorp Vault before running the role and then set to the `dc_safe_mode_password` variable.

## [2.1.0] - 2024-08-20

### Role - testing_domain_controller

- Added the `configure_reverse_lookup_zone` option (enabled by default) to configure DNS reverse lookup zones to the testing and register the domain controller's IP address as a PTR record.

### Role - testing_linux_member

- Added the `dns_register_reverse_host` option (enabled by default) to register the Linux member's IP address as a PTR record.
- Changed default behavior to not configure an SSSD space override character.

### Role - testing_win_member

- Added the `dns_register_reverse_host` option (enabled by default) to register the Windows member's IP address as a PTR record.

## [2.0.0] - 2024-08-19

### Collection

- *testing_domain_member* role renamed to *testing_win_member* role.
- *testing_linux_member* role added.

## [1.2.7] - 2024-08-09

### Collection

- Minimum Ansible version changed from `2.14` to `2.15` due to EOL status.

## [1.2.6] - 2024-07-09

### Role - domain_controller

- Documentation and validation improved.

### Role - linux_member

- Documentation and validation improved.

## [1.2.5] - 2024-07-08

### Collection

- Fixed problem with manifest that caused documentation to not be included with the collection.

### Role - linux_member

- Removed gathering of `distribution_release` subset unnecessarily.

## [1.2.4] - 2024-07-06

### Role - authorize_dhcp_server

- Added validation for `dhcp_authorize_servers` variable.

### Role - linux_member

- Added `no_log` tag to task that joined the domain by shell command as the task output contained the value of the `domjoin_domain_password` variable.
- Renamed the tasks file `packages.yml` to `install.yml` to be more consistent with other roles I maintain.
- Added validation for support distributions.

## [1.2.3] - 2024-06-30

### Role - authorize_dhcp_server

- Fixed documentation to properly include role dependencies.

### Role - domain_controller

- Fixed documentation to properly include role dependencies.

## [1.2.2] - 2024-06-29

### Collection

- Added EL version 9 to Galaxy metadata.

### Role - linux_member

- Changed references to Red Hat Enterprise Linux (RHEL) to more accurately reference Enterprise Linux (EL) to convey the intention to support derivatives (Rocky/AlmaLinux/etc.)

## [1.2.1] - 2024-06-24

### Role - authorize_dhcp_server

- Removed steps to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository from tasks.
- Added role dependency on *trippsc2.windows.install_psgallery* role to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository.

### Role - domain_controller

- Removed steps to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository from tasks.
- Added role dependency on *trippsc2.windows.install_psgallery* role to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository.

## [1.2.0] - 2024-06-24

### Collection

- Removed dependency reference to **trippsc2.general** collection.
- Added dependency reference to **trippsc2.windows** collection.
- *authorize_dhcp_server* role added.

### Role - domain_controller

- Changed reference to *trippsc2.general.win_package_provider* module to *trippsc2.windows.win_package_provider* module.

## [1.1.1] - 2024-06-20

### Role - domain_controller

- Updated documentation and role metadata for readability.

### Role - linux_member

- Updated documentation and role metadata for readability.

### Role - testing_domain_controller

- Updated documentation and role metadata for readability.

### Role - testing_domain_member

- Updated documentation and role metadata for readability.

### Role - testing_standalone_win

- Updated documentation and role metadata for readability.

## [1.1.0] - 2024-06-13

### Collection

- *linux_member* role added.

## [1.0.0] - 2024-06-12

### Collection

- Initial release.
- *domain_controller* role added.
- *testing_domain_controller* role added.
- *testing_domain_member* role added.
- *testing_standalone_win* role added.
