function magic-enter-cmd --description "Customize your own magic-commands"
    
    set --local my_magic_command 'll'
    
    if command git rev-parse --is-inside-work-tree &>/dev/null
        set my_magic_command "$my_magic_command && git status"
    end
    
    echo $my_magic_command
end

function magic-enter
    set -l cmd (commandline)
    if test -z "$cmd"
        commandline -r (magic-enter-cmd)
        commandline -f suppress-autosuggestion
    end
    commandline -f execute
end

bind \r magic-enter
