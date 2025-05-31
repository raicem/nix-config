{ config, pkgs, ... }:

{
  imports = [
    ./gnome.nix
    # ./programs.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "raicem-personal";
  home.homeDirectory = "/home/raicem-personal";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  nixpkgs.config = {
    allowUnfree = true;
  };

  # Additional packages can be added here if needed
  # Programs are now managed in programs.nix
  home.packages = [
    # Add any system-specific packages here
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # XDG configuration files (files that go in ~/.config/)
  xdg.configFile = {
    # Ghostty terminal emulator configuration
    "ghostty/config".source = ./dotfiles/ghostty/config;
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/cemunalan/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Program configurations (independent of how programs are installed)
  
  # Fish shell configuration
  programs.fish = {
    enable = true;
    
    # Interactive shell configuration
    interactiveShellInit = ''
      # Commands to run in interactive sessions can go here
    '';
    
    # Shell aliases
    shellAliases = {
      lg = "lazygit";  # Use system path instead of nix store path
      vim = "nvim";
      vi = "nvim";
    };
    
    # Shell init (equivalent to config.fish)
    shellInit = ''
      # Fish shell initialization
    '';
  };

  # Git configuration
  programs.git = {
    enable = true;
    userName = "raicem";
    userEmail = "unalancem@gmail.com";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Enable experimental Nix features
  nix = {
    package = pkgs.nix;
    settings = {
      experimental-features = [ "nix-command" ];
    };
  };
}
