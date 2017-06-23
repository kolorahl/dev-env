function __gkube_help_general
  echo "gkube - helper functions for using gcloud + kubectl"
  echo ""
  echo "Use 'gkube help <command>' to learn more about each command."
  echo "Available commands:"
  set -l commands profiles activate
  for command in $commands
    echo "* $command"
  end
end

function __gkube_help_profiles
  echo "gkube profiles - List gcloud configuration profiles."
  echo ""
  echo "A 'profile' is a saved configuration entry for gcloud."
  echo ""
  echo "This is especially useful for quickly switching between projects and"
  echo "accounts."
end

function __gkube_help_activate
  echo "gkube activate <profile> [<cluster] - Switch profiles."
  echo ""
  echo "A 'profile' is a saved configuration entry for gcloud."
  echo ""
  echo "May optionally also switch default cluster credentials. Any kubectl"
  echo "commands will use the default cluster credentials to target operations"
  echo "against."
end

function __gkube_help -a "cmd"
  if test -n "$cmd"
    switch $cmd
      case profiles
        __gkube_help_profiles
      case activate
        __gkube_help_activate
      case '*'
        echo "No help text for '$cmd'. Printing general help."
        __gkube_help_general
    end
  else
    __gkube_help_general
  end
end

function __gkube_profiles
  command gcloud config configurations list
end

function __gkube_activate -a "profile" -a "cluster"
  if test -n "$profile"
    command gcloud config configurations activate $profile
    if test -n "$cluster"
      command gcloud container clusters get-credentials $cluster
    end
  else
    echo "Must supply a profile name and cluster name to 'gkube activate'."
    echo "Use 'gkube profiles' to get a list of configuration profiles."
    echo "Check your Kubernetes clsuters to get a list of possible cluster names."
    return 1
  end
end

function gkube -d "Helper functions for using gcloud + kubectl" -a "cmd"
  set args $argv
  if test -n "$cmd"
    set -e args[1]
    switch $cmd
      case profiles
        __gkube_profiles
      case activate
        __gkube_activate $args
      case help
        __gkube_help $args
      case '*'
        echo "Invalid command: $cmd"
        echo  "Try gkube help for further instructions"
        return 1
    end
  else
    __gkube_help
  end
end
