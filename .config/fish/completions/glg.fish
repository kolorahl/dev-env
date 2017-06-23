function __fish_glg_branches
  git branch --no-color -a 2>/dev/null | sed 's/^..//'
end

complete -f -c glg -a "(__fish_glg_branches)"
