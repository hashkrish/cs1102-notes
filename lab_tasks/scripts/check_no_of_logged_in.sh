#!/bin/bash
#
# Print count of logged in users
# Contributed by: TA Bathula Sharath Kumar
#
users=$(who | wc -l)
echo "Number of currently logged-in users: $users"
