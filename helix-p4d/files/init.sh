#!/bin/bash

# Setup directories
mkdir -p $P4ROOT
mkdir -p $P4DEPOTS
mkdir -p $P4CKP
mkdir -p $P4LOGDIR

# Restore checkpoint if symlink latest exists
if [ -L $P4CKP/latest ]; then
    echo "Restoring checkpoint..."
	restore.sh
	rm $P4CKP/latest
else
	echo "Create empty or start existing server..."
	empty_setup.sh
fi

echo "Perforce Server starting..."
until p4 info -s 2> /dev/null; do sleep 1; done
echo "Perforce Server [RUNNING]"

## Remove all triggers
echo "Triggers:" | p4 triggers -i

## Set server id
if [ ! -f $P4ROOT/server.id ]; then
    echo "Setting server ID..."
    p4 serverid ue-pn
else
    echo "Server ID already set."
fi