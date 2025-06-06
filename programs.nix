{ config, pkgs, ... }:

{
  xdg.configFile = {
    "ghostty/config".source = ./dotfiles/ghostty/config;
    "Code/User/settings.json".source = ./dotfiles/vscode/settings.json;
    "Code/User/keybindings.json".source = ./dotfiles/vscode/keybindings.json;
  };

  programs.fish = {
    enable = true;

    # Interactive shell configuration
    interactiveShellInit = ''
      set -U fish_greeting
    '';
    
    # Shell aliases
    shellAliases = {
      lg = "lazygit";
      vim = "nvim";
      vi = "nvim";
    };
  };

  programs.git = {
    enable = true;
    userName = "raicem";
    userEmail = "unalancem@gmail.com";
  };
}
