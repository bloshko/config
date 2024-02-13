if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls="lsd"
    alias l="lsd"
    alias vim="nvim"
    alias vi="nvim"
    alias cat="bat"

    set ABLETON_SAMPLES_FOLDER $HOME/Music/Ableton/User\ Library/Samples/DOWNLOADS/

    alias getsample ="yt-dlp -x --audio-format wav --audio-quality 0 --no-keep-video -P $ABLETON_SAMPLES_FOLDER"

    fish_add_path -aP $HOME/go/bin:$HOME/bin:/usr/local/bin:$HOME/.local/bin:/Library/TeX/texbin:$HOME/.deno/bin
    fish_add_path $HOME/.cargo/bin
    fish_add_path /opt/homebrew/bin

    zoxide init fish | source
    starship init fish | source
end
