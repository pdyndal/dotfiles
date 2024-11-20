#!/bin/bash

# Set username and email for next commands
echo "Enter your email:"
read -r email
echo "Enter your GitHub username:"
read -r username
echo "Enter your GPG key ID:"
read -r gpgkeyid

# Configure Git
git config --global user.email "${email}"
git config --global user.name "${username}"
git config --global user.signingkey "${gpgkeyid}"
git config --global commit.gpgsign true
git config --global core.pager /usr/bin/less
git config --global core.excludesfile ~/.gitignore

# Generate a new SSH key
ssh-keygen -t rsa -b 4096 -C "${email}"

# Start ssh-agent and add the key to it
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Display the public key ready to be copy pasted to GitHub
cat ~/.ssh/id_rsa.pub
