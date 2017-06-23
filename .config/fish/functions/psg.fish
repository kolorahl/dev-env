function psg --description "Simple combination of ps and grep for finding processes."
        command ps auwwwx | grep $argv
end
