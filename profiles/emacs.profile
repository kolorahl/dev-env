#!/bin/bash

# start emacs daemon
alias emacsd="/usr/bin/emacs --daemon &> /dev/null"

# emacs should always be running in daemon mode in the background
alias emacs="emacsclient -t"
alias em="/usr/bin/emacs -t"
