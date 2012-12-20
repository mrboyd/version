#!/bin/bash

#!/bin/bash
# Script for migrating code from subversion
# David Peterka
# update.sh [-f config file] [-t tag] [-e env]

# This script will deploy code from Subversion to a directory on a server,
# it requires a correctly configured configuration file.
# Runtime options (-f, -t, -e) can be set in this configuration file, or
# alternatively can be overwritten or set each time you run it.
# This allows you to 'pre-package' the deployment so that one can
# simply do ./update.sh to deploy code, or if you don't want to edit a config
# file every bloody release you could do ./update.sh -t Build_1.0.
# If you do not set the switch -f it will look for a file called update.conf
# in the same directory where the script resides.
# You'll probably want to read through the configuration file, if you don't
# most likely you'll cause some damage that will make you want to cry.


