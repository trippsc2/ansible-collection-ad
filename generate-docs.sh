#! /bin/bash

cd ./roles/authorize_dhcp_server

aar_doc . markdown

cd ../domain_controller

aar_doc . markdown

cd ../linux_member

aar_doc . markdown

cd ../rotate_ad_user_password

aar_doc . markdown

cd ../testing_domain_controller

aar_doc . markdown

cd ../testing_linux_member

aar_doc . markdown

cd ../testing_standalone_win

aar_doc . markdown

cd ../testing_win_member

aar_doc . markdown
