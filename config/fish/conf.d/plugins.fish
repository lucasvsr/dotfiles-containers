function _install_plugins --on-event fish_prompt
    
    if ! test -f $XDG_CONFIG_DIR/fish/fish_plugins.installed; and fisher list &> /dev/null;

        fisher update && touch $XDG_CONFIG_DIR/fish/fish_plugins.installed
        
    end

end
