#!/bin/bash

# Exit codes
# 0 - everything good
# 1 - invalid email
# 2 - invalid username

# Set username and email for next commands
read -p "Enter email: " -r email
if [ -n $email ]; then
    git config --global user.email "${email}"
else
    echo "Invalid email"
    exit 1
fi


read -p "Enter your GitHub username:" -r username
if [ -n $username ]; then
    git config --global user.name "${username}"
else
    echo "Invalid username"
    exit 2
fi

# git config --global commit.gpgsign true
git config --global core.pager /usr/bin/less
git config --global core.excludesfile ~/.gitignore

