#!/bin/bash

# ssh-agent should be running in the background
alias sshagent="eval \`ssh-agent\`"

# reloads all SSH identities
alias loadssh"ssh-add -D && ssh-add ~/.ssh/^(*.pub|known_hosts)"
