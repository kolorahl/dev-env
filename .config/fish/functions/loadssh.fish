function loadssh -d "Start the SSH Agent and load applicable keys."
  eval (ssh-agent -ck | sed 's/setenv/set -x/')
  find ~/.ssh -type f \! -name "*known_hosts" -and \! -name "*.pub" | xargs ssh-add
end
