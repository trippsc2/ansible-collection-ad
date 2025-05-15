#! /bin/bash

set -e

MOLECULE_BOX="rocky9_cis" molecule test
MOLECULE_BOX="debian12_base" molecule test
MOLECULE_BOX="ubuntu2404_base" molecule test

MOLECULE_BOX="rocky8_cis" molecule test

MOLECULE_BOX="ubuntu2204_base" molecule test
MOLECULE_BOX="ubuntu2004_base" molecule test
