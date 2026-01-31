function fish_title
    
    set -l dir ""

    if test -e /.dockerenv
        
        set ondocker " @ $HOSTNAME"
        
    end

    switch $PWD
        
        case $HOME

            set dir "🏠"
        
        case '*'

            set dir (basename $PWD)
        
    end

    echo -ne "$dir$ondocker"

end