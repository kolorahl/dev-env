function _start_emacs_daemon -d "Used to start an emacs daemon with a particular name." -a name
  emacs --daemon=$name
end

function _stop_emacs_daemon -d "Used to stop an emacs daemon with a particular name." -a name
  psg "emacs" | grep "daemon=$name" | awk '{ system("kill -9 " $2) }'
end

function emacsd -d "Start or stop emacs daemons." -a action name
  set -l help "Requires both an action ([start|stop]) and a daemon name."

  if test -z $action
    echo $help
    return 1
  end

  if test -z $name
    echo $help
    return 1
  end

  switch $action
    case start
      _start_emacs_daemon $name
    case stop
      _stop_emacs_daemon $name
    case '*'
      echo "Invalid action '$action', must be one of: [start|stop]"
      return 1
  end
end
