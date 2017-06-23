function gibd --description "Deletes a branch from 'all' locations: local, remote (origin), remote (upstream)."
  command git branch -D $argv
  command git push origin :$argv
  command git push upstream :$argv
end
