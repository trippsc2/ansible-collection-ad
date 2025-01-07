# Changelog

All notable changes to this project will be documented in this file.

## [2.3.5] - 2025-01-07

- Added Changelog.
- Updated collection README documentation.
- *trippsc2.ad.domain_controller* role - Removed unnecessary validation task for `dc_safe_mode_password` variable that is handled by role argument spec.

## [2.3.4] - 2024-11-27

- *trippsc2.ad.domain_controller* role - Removed the value of `dc_safe_mode_password` from the output of the validation step for better security. This was added by mistake previously.

## [2.3.3] - 2024-10-22

- *trippsc2.ad.authorize_dhcp_server* and *trippsc2.ad.domain_controller* role - Removed `os_family` subset from fact gathering step, as it does not apply to Windows systems.

## [2.3.2] - 2024-09-23

- *trippsc2.ad.rotate_ad_user_password* role - Added the `run_once` parameter to the password rotation step to prevent the password being reset multiple times in succession.

## [2.3.1] - 2024-09-17

- *trippsc2.ad.rotate_ad_user_password* role - Changed the role from using the `name` parameter to using the `identity` parameter for identifying the user whose password is to be rotated.

## [2.3.0] - 2024-09-17

- *trippsc2.ad.rotate_ad_user_password* role - Role added.

## [2.2.3] - 2024-09-06

- *trippsc2.ad.domain_controller* role - Added `no_log` to the `dc_safe_mode_password` and `dc_domain_admin_password` variables.
- *trippsc2.ad.linux_member* role - Added `no_log` to the `domjoin_domain_password` variable.
- *trippsc2.ad.testing_domain_controller* role - Added `no_log` to the `dc_safe_mode_password` and `dc_domain_admin_password` variables.
- *trippsc2.ad.testing_linux_member* role - Added `no_log` to the `domain_join_password` variable.
- *trippsc2.ad.testing_win_member* role - Added `no_log` to the `domain_join_password` variable.

## [2.2.2] - 2024-09-05

- Removed unneeded dependency reference to **community.hashi_vault** collection.
- Removed unneeded dependency reference to **trippsc2.hashi_vault** collection.
- Reduced the version requirement for **community.windows** collection from `>=1.11.0` to `>=1.0.1`.

## [2.2.1] - 2024-09-05

- *trippsc2.ad.domain_controller* role - Removed validation that applied to storing the safe mode password in HashiCorp Vault.

## [2.2.0] - 2024-09-05

- *trippsc2.ad.domain_controller* role - Removed support for managing the safe mode password using HashiCorp Vault directly within the role.  Instead, the safe mode password should be stored in HashiCorp Vault before running the role and then set to the `dc_safe_mode_password` variable.

## [2.1.0] - 2024-08-20

- *trippsc2.ad.testing_domain_controller* role - Added the `configure_reverse_lookup_zone` option (enabled by default) to configure DNS reverse lookup zones to the testing and register the domain controller's IP address as a PTR record.
- *trippsc2.ad.testing_linux_member* role - Added the `dns_register_reverse_host` option (enabled by default) to register the Linux member's IP address as a PTR record.
- *trippsc2.ad.testing_linux_member* role - Changed default behavior to not configure an SSSD space override character.
- *trippsc2.ad.testing_win_member* role - Added the `dns_register_reverse_host` option (enabled by default) to register the Windows member's IP address as a PTR record.

## [2.0.0] - 2024-08-19

- *trippsc2.ad.testing_domain_member* role - Renamed to *trippsc2.ad.testing_win_member*.
- *trippsc2.ad.testing_linux_member* role - Role added.

## [1.2.7] - 2024-08-09

- Minimum Ansible version changed from `2.14` to `2.15` due to EOL status.

## [1.2.6] - 2024-07-09

- *trippsc2.ad.domain_controller* role - Documentation and validation improved.
- *trippsc2.ad.linux_member* role - Documentation and validation improved.

## [1.2.5] - 2024-07-08

- Fixed problem with manifest that caused documentation to not be included with the collection.
- *trippsc2.ad.linux_member* role - Removed gathering of `distribution_release` subset unnecessarily.

## [1.2.4] - 2024-07-06

- *trippsc2.ad.authorize_dhcp_server* role - Added validation for `dhcp_authorize_servers` variable.
- *trippsc2.ad.linux_member* role - Added `no_log` tag to task that joined the domain by shell command as the task output contained the value of the `domjoin_domain_password` variable.
- *trippsc2.ad.linux_member* role - Renamed the tasks file `packages.yml` to `install.yml` to be more consistent with other roles I maintain.
- *trippsc2.ad.linux_member* role - Added validation for support distributions.

## [1.2.3] - 2024-06-30

- *trippsc2.ad.authorize_dhcp_server* role - Fixed documentation to properly include role dependencies.
- *trippsc2.ad.domain_controller* role - Fixed documentation to properly include role dependencies.

## [1.2.2] - 2024-06-29

- Added EL version 9 to Galaxy metadata.
- *trippsc2.ad.linux_member* role - Changed references to Red Hat Enterprise Linux (RHEL) to more accurately reference Enterprise Linux (EL) to convey the intention to support derivatives (Rocky/AlmaLinux/etc.)

## [1.2.1] - 2024-06-24

- *trippsc2.ad.authorize_dhcp_server* role - Removed steps to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository from tasks.
- *trippsc2.ad.authorize_dhcp_server* role - Added role dependency on *trippsc2.windows.install_psgallery* role to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository.
- *trippsc2.ad.domain_controller* role - Removed steps to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository from tasks.
- *trippsc2.ad.domain_controller* role - Added role dependency on *trippsc2.windows.install_psgallery* role to install `NuGet` package provider, `PowerShellGet` module, `PackageManagement` module, and `PSGallery` repository.

## [1.2.0] - 2024-06-24

- Removed dependency reference to **trippsc2.general** collection.
- Added dependency reference to **trippsc2.windows** collection.
- *trippsc2.ad.authorize_dhcp_server* role - Role added.
- *trippsc2.ad.domain_controller* role - Changed reference to *trippsc2.general.win_package_provider* module to *trippsc2.windows.win_package_provider* module.

## [1.1.1] - 2024-06-20

- *trippsc2.ad.domain_controller* role - Updated documentation and role metadata for readability.
- *trippsc2.ad.linux_member* role - Updated documentation and role metadata for readability.
- *trippsc2.ad.testing_domain_controller* role - Updated documentation and role metadata for readability.
- *trippsc2.ad.testing_domain_member* role - Updated documentation and role metadata for readability.
- *trippsc2.ad.testing_standalone_win* role - Updated documentation and role metadata for readability.

## [1.1.0] - 2024-06-13

- *trippsc2.ad.linux_member* role - Role added.

## [1.0.0] - 2024-06-12

- Initial release.
- *trippsc2.ad.domain_controller* role - Role added.
- *trippsc2.ad.testing_domain_controller* role - Role added.
- *trippsc2.ad.testing_domain_member* role - Role added.
- *trippsc2.ad.testing_standalone_win* role - Role added.
