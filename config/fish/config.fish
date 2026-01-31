if status is-interactive

set fish_greeting

for item in $__fish_config_dir/conf.d/*.fish
    source $item
end

end
