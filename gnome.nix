{lib, ...}: {
  dconf.settings = {
    "org/gnome/desktop/input-sources" = {
      xkb-options = [ "caps:swapescape" "ctrl:swap_lwin_lctl"];
      sources = [(lib.hm.gvariant.mkTuple ["xkb" "tr+alt"])];
    };
    "org/gnome/desktop/peripherals/mouse" = { natural-scroll = false; };
    "org/gnome/desktop/peripherals/touchpad" = { natural-scroll = true; };
    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };
    "org/gnome/settings-daemon/plugins/media-keys" = {
      search = ["<Control>space"];
    };
    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = false;
    };
    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = ["<Shift><Control>Left"];
      toggle-tiled-right = ["<Shift><Control>Right"];
    };
    "org/gnome/mutter" = {
      dynamic-workspaces = false;
    };
    "org/gnome/desktop/wm/keybindings" = {
      close = ["<Control>q"];
      cycle-windows = ["<Control>Tab"];
      cycle-windows-backward = ["<Control><Shift>Tab"];
      move-to-workspace-1 = ["<Shift><Alt>1"];
      move-to-workspace-2 = ["<Shift><Alt>2"];
      move-to-workspace-3 = ["<Shift><Alt>3"];
      move-to-workspace-4 = ["<Shift><Alt>4"];
      move-to-workspace-last = ["<Shift><Alt>0"];
      switch-to-workspace-1 = ["<Alt>1"];
      switch-to-workspace-2 = ["<Alt>2"];
      switch-to-workspace-3 = ["<Alt>3"];
      switch-to-workspace-4 = ["<Alt>4"];
      switch-to-workspace-last = ["<Alt>0"];
    };
    "org/gnome/desktop/wm/preferences" = {
      num-workspaces = 5;
    };
  };
}
