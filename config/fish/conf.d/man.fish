function man --description "Manual de instruções do comando (usa o tldr ou man nativo)"
    
    if command -v tldr > /dev/null && gum spin --spinner.foreground "#7C90A0" --spinner.bold \
            --spinner dot --title.bold --title " Carregando informações sobre $argv[1]" \
            --show-output -- sleep 1 && tldr $argv[1]

        return 0

    else

        /usr/bin/man $argv[1]
        
    end

end