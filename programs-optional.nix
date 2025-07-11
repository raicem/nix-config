{ config, pkgs, ... }:

{
  # Program installation only - configurations live in home.nix
  home.packages = with pkgs; [
    # Development tools
    lazygit
    neovim
    
    # Terminal tools
    zellij
    # ghostty

    # Programs
    # beekeeper-studio
    yt-dlp
    go
    php
  ];

  programs.chromium = {
    enable = true;
    package = pkgs.google-chrome;
  };
}
