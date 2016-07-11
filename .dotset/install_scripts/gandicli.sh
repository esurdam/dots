#!/bin/bash

# Gandi CLI installer script
# By: Evan Surdam
#
# will install into ~/.gandi
# see https://github.com/Gandi/gandi.cli

DIR='/Users/esurdam/.gandi'

type virtualenv >/dev/null 2>&1 || { echo >&1 "I require virtualenv but it's not installed.  Aborting."; exit 1; }

if [ ! -d "$DIR" ]; then
	mkdir $DIR
fi

if ! type "gandi" > /dev/null; then
	virtualenv $DIR/gandi.cli
	source $DIR/gandi.cli/bin/activate
	pip install gandi.cli
fi

echo " ### gandi has been installed!"
echo " ### please run 'gandi setup'"
