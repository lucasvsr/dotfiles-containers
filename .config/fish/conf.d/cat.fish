function cat

    if command -v bat &> /dev/null

        bat $argv
        
    else

        /usr/bin/cat $argv

    end
    
end