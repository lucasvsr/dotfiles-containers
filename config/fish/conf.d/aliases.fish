alias c="clear"
alias iplist='ip -c -br a'
alias mkdir='mkdir -p'

if command -v trash >/dev/null

    alias rm='trash'

end

if command -v chezmoi >/dev/null

    abbr -a -g cz 'chezmoi'
    abbr -a -g cze 'chezmoi edit'
    abbr -a -g czs 'chezmoi status'
    abbr -a -g czad 'chezmoi add'
    abbr -a -g czap 'chezmoi apply'
    abbr -a -g czcd 'chezmoi cd'
    abbr -a -g aliasconf 'chezmoi edit $XDG_CONFIG_DIR/fish/conf.d/aliases.fish'

end

if command -v ag > /dev/null

    alias grep='ag'
    alias agr='grep -R'

end

if command -v docker >/dev/null

    alias dstop='docker stop $(docker ps -q)'
    alias dclean='dstop && docker rm $(docker ps -a -q)'
    abbr -a -g dps 'docker ps --format="table {{.Names}} \t {{.Ports}}"'

end

if command -v tmux >/dev/null

    abbr -a -g t 'tmux'
    abbr -a -g ta 'tmux attach -t'
    abbr -a -g tad 'tmux attach -d -t'
    abbr -a -g tkss 'tmux kill-session -t'
    abbr -a -g tksv 'tmux kill-server'
    abbr -a -g tl 'tmux list-sessions'
    abbr -a -g ts 'tmux new-session -s'

end

if command -v zellij >/dev/null

    abbr -a -g zj 'zellij'
    abbr -a -g za 'zellij attach'
    abbr -a -g zk 'zellij kill-session'
    abbr -a -g zka 'zellij kill-all-sessions'
    abbr -a -g zls 'zellij list-sessions'
    abbr -a -g zs 'zellij -s'

end

if command -v eza >/dev/null

    alias ls='eza --git --icons -I=$HIDDEN_FILES --sort=type'
    alias ll='ls --long --header'
    alias tree='ll --tree'
    alias l='HIDDEN_FILES="" ll -a'
    alias sym="l | grep '\->'"

end

if command -v gping > /dev/null
    
    alias ping='gping'

end

if command -v rpm-ostree > /dev/null

    abbr -a -g changelogs 'rpm-ostree db diff --changelogs'

end

if command -v distrobox-host-exec > /dev/null

    abbr -a -g dhe 'distrobox-host-exec'
    abbr -a -g dhes 'distrobox-host-exec sudo'
    abbr -a -g dhb 'distrobox-host-exec bash'

end

if command -v paru > /dev/null && command -v flatpak > /dev/null

    abbr -a -g upd 'paru && flatpak update'

end

if command -v oc > /dev/null

    abbr -a -g opf 'oc port-forward'
    abbr -a -g ocl 'oc login'
    abbr -a -g ogp 'oc get pods'
    abbr -a -g ocp 'oc project'

end

if command -v ss > /dev/null

    abbr -a -g olist 'sudo ss -tuln | grep LISTEN'

end 
