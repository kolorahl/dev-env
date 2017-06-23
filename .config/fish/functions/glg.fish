function glg --description "Same as git log | less"
  command git log --stat $argv | less
end
