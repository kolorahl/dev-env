function __fish_gkube_no_subcommand
  set -l cmd (commandline -opc)
  if test (count $cmd) -gt 1
    return 1
  end
  return 0
end

function __fish_gkube_using_command
  set -l cmd (commandline -opc)
  if test (count $cmd) -gt 1
    if test $cmd[2] = $argv[1]
      return 0
    end
  end
  return 1
end

function __fish_gkube_list_profiles
  set -l list (gcloud config configurations list | awk '{ print $1 }')
  set -e list[1]
  for item in $list
    echo $item
  end
end

set -l commands help profiles activate

complete -f -c gkube -n '__fish_gkube_no_subcommand' -a "$commands"
complete -f -c gkube -n '__fish_gkube_using_command help' -a "$commands"
complete -f -c gkube -n '__fish_gkube_using_command activate' -a "(__fish_gkube_list_profiles)"
