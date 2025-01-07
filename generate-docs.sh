#! /bin/bash

cd ./roles/authorize_dhcp_server

aar-doc . markdown

cd ../domain_controller

aar-doc . markdown

cd ../linux_member

aar-doc . markdown

cd ../rotate_ad_user_password

aar-doc . markdown

cd ../testing_domain_controller

aar-doc . markdown

cd ../testing_linux_member

aar-doc . markdown

cd ../testing_standalone_win

aar-doc . markdown

cd ../testing_win_member

aar-doc . markdown
