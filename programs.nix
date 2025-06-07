{ config, pkgs, ... }:

{
  xdg.configFile = {
    # Using mkOutOfStoreSymlink for mutable dotfiles - you can edit these directly
    "ghostty/config".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-config/dotfiles/ghostty/config";
    "Code/User/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-config/dotfiles/vscode/settings.json";
    "Code/User/keybindings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nix-config/dotfiles/vscode/keybindings.json";
  };
  
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = true;
  };

  programs.lazygit = {
    enable = true;
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

  programs.btop = {
    enable = true;
  };
}
