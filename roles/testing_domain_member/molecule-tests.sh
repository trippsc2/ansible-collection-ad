#! /bin/bash

set -e

MOLECULE_BOX="w2019_cis" molecule test
MOLECULE_BOX="w2022_cis" molecule test

MOLECULE_BOX="w11_23h2_base" molecule test
MOLECULE_BOX="w10_22h2_base" molecule test
