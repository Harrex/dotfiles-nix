{ config, pkgs, ... }:


# # "git smash" = "/home/harrek/Scripts/gitsmash.sh";
# git() {
#     if [[ $1 == "smash" ]]; then 
#         "/home/harrek/Scripts/gitsmash.sh" $2
#     else
#         command git $@
#     fi
# }



{
    programs.zsh = {
        enable = true;
        autocd = true; 
        syntaxHighlighting.enable = true;
        autosuggestions.enable = true;

        enableCompletion = true;
        # enableBashCompletion = true;

        initExtra = ''
setopt extendedglob

export PATH="$PATH:/home/harrek/Scripts"
export PATH="$PATH:/home/harrek/Applications"
export PATH="$PATH:/home/harrek/.local/bin"
export EDITOR="/usr/bin/nvim"
export XDG_DATA_DIRS="~/.local/share/sounds:''${XDG_DATA_DIRS:-/usr/local/share/:/usr/share/}"

export FZF_DEFAULT_COMMAND='find . -type f ! -name ".*"'

export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5


# Starship
eval "$(starship init zsh)"
# Atuin
eval "$(atuin init zsh --disable-up-arrow)"
# Thefuck Alias
eval $(thefuck --alias)
# Zoxide
eval "$(zoxide init zsh)"
[ -f "/home/harrek/.ghcup/env" ] && source "/home/harrek/.ghcup/env" # ghcup-env

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completion: %d'
zstyle ':completion:*' ignore-parents pwd
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list ''' 'm:{[:lower:]}={[:upper:]} r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' prompt '%e errors.'
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '/home/harrek/.zshrc'
zstyle ':completion:*' menu select

bindkey -v


        '';
         

        shellAliases = {
            "yay" = "yay --noconfirm";
            "vim" = "nvim";
            "v" = "nvim";
            "vi" = "nvim";
            "vf" = "nvim '$(fzf)'";
            "neofetch" = "clear && neofetch";
            "surf" = "GDK_BACKEND=x11 /usr/local/bin/surf";
            "icat" = "kitten icat";
            "theme" = "wal --theme";
            "ll" = "ls -alF";
            "la" = "ls -A";
            "l" = "ls -CF";
            "ls" = "ls --color=auto";
            "feh" = "feh --scale-down";
            # "feh" = "feh --zoom fill";
            "xo" = "xdg-open";
            "f" = "fzf";
            "gpt" = "chatgpt";
            "thorium" = "thorium-browser";
            "f." = "find . | fzf";
            "xof" = "nohup xdg-open '$(fzf)'";
            "vf." = "nvim '$(find . | fzf)'";
            "vcg" = "nvim .config/nvim/";
            "zf" = "zathura '$(fzf)' & disown && exit";
            "vcf" = "nvim '$(dirname '$(fzf)')'";
            "cf" = "cd `find . -type d -print 2>/dev/null | fzf`";
            # "cf" = "cd '$(dirname '$(fzf)')'";
            "wk" = "firefox --fullscreen --new-window https://www.wanikani.com/subjects/review & disown";
            "mkc" = ". mkc ";
            "q" = "exit";
            "wqa" = "exit";
            "w" = "exit";
            # Misc aliases
            "weather" = "clear && curl wttr.in/Bathurst";
            "jc" = "clear && jisho-cli -i";
            "pd" = "pushd";
            "ppd" = "popd";
            "dirs" = "dirs -v";
        };
    };
}
