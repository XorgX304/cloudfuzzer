#!/bin/bash

set -o errexit
set -o nounset

NODES=$(cat $HOME/address_nodes)

for node in $NODES; do 
	rsync -auP  rsync://$node:10873/volume/ results/
done