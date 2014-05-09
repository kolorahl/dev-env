#!/bin/bash

# ssh-agent should be running in the background
alias sshagent="eval \`ssh-agent\`"

# attempt to load necessary identities
alias loadssh="ssh-add ~/.ssh/github ~/.ssh/bitbucket"
