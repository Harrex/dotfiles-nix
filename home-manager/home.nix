{ config, pkgs, ... }:

{
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "harrek";
    home.homeDirectory = "/home/harrek";

    nixpkgs.config.allowUnfree = true;

    # This value determines the Home Manager release that your configuration is
    # compatible with. This helps avoid breakage when a new Home Manager release
    # introduces backwards incompatible changes.
    #
    # You should not change this value, even if you update Home Manager. If you do
    # want to update the value, then make sure to first check the Home Manager
    # release notes.
    home.stateVersion = "24.05"; # Please read the comment before changing.

    # The home.packages option allows you to install Nix packages into your
    # environment.
    home.packages = with pkgs; [
        # # It is sometimes useful to fine-tune packages, for example, by applying
        # # overrides. You can do that directly here, just don't forget the
        # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
        # # fonts?
        (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })

        # Command Line
        glow # Terminal markdown viewer
        git
        gh
        jq # JSON parser
        ripgrep # nvim-telescope dep. 
        tree
        eza
        fzf
        unzip
        file
        caligula # Flashing tool - img to usb etc.
        stow
        btop
        dust

        ffmpeg
        feh

        ## Toys
        cbonsai
        cmatrix # Cool matrix effect
        neofetch

        # Graphical
        firefox
        obsidian
        discord
        chromium
        blender


        zathura

        pcmanfm
        cinnamon.nemo
        xfce.thunar

        nwg-look
        pavucontrol
        libreoffice

        # Shell
        starship
        atuin
        thefuck
        zoxide
        rofi-wayland

        oh-my-zsh

        # Desktop Stuff
        pywal # Gets colours from images to set a theme
        swww # Sets wallpapers for wayland
        libinput-gestures # For touchpad gestures
        swaynotificationcenter # Notification centre
        libnotify # notify-send
        waybar
        copyq
        wl-clipboard
        hyprlock
        grim # Screenshots
        slurp
        playerctl

        # Music
        mpd
        mpc-cli
        ncmpcpp # MPD client

        # Development
        cargo


    ];

    services.mpd-mpris.enable = true;

    services.mpd = {
        enable = true;
        musicDirectory = "/home/harrek/Music";
        extraConfig = ''
            audio_output {
                type "pipewire"
                name "PipeWire Output"
            }
        '';
    };
    services.playerctld.enable = true;

    systemd.user.targets.hyprland-session = {
        Unit = {
            Description = "Start graphical-session.target on hyprland launch";
            BindsTo = "graphical-session.target";
            Wants = "graphical-session-pre.target";
            After = "graphical-session-pre.target";
        };
        Install = {
            WantedBy = [ "default.target" ];
        };
    };

    # services.swaync.enable = true;

    # Default Fonts

    fonts.fontconfig = {
        enable = true;
        defaultFonts = {
            monospace = [ "FiraCode Nerd Font" ];
        };
    };

    # Theming

    home.sessionVariables.GTK_THEME = "rose-pine-gtk";

    gtk = {
        enable = true;
        theme = {
            name = "Everforest-Dark-B";
        };
        iconTheme = {
            name = "rose-pine-icons";
        };
        cursorTheme = {
            name = "BreezeX-RoséPine";
        };
    };


    # Home Manager is pretty good at managing dotfiles. The primary way to manage
    # plain files is through 'home.file'.
    home.file = { };

    # Home Manager can also manage your environment variables through
    # 'home.sessionVariables'. These will be explicitly sourced when using a
    # shell provided by Home Manager. If you don't want to manage your shell
    # through Home Manager then you have to manually source 'hm-session-vars.sh'
    # located at either
    #
    #    ~/.nix-profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #    ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
    #
    # or
    #
    #    /etc/profiles/per-user/harrek/etc/profile.d/hm-session-vars.sh
    #
    home.sessionVariables = {
        EDITOR = "nvim";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}
