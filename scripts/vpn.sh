#!/bin/bash
#
# connect to ouvpn.ou.edu, not sure how we got here but these are the flags
# that worked. Still have not figured out how to pass a password but since that
# isn't very secure to have pwd in plain text it's probably cool.
sudo openconnect --protocol=gp -u boat0011 ouvpn.ou.edu
