function _install_plugins --on-event fish_prompt
    
    if ! test -f $HOME/.config/fish/fish_plugins.installed; and type -q fisher; and fisher list &> /dev/null;

        fisher update && touch $HOME/.config/fish/fish_plugins.installed
        
    end

end
