{pkgs, ...}: let
  ghosttyConfigDir = "/Users/matt/.config/ghostty";
in {
  # Install fd for fzf-based file search
  environment.systemPackages = [
    pkgs.fd
  ];

  # Define the user specific configuration for Ghostty
  home-manager.users.matt = {
    home.file = {
      "${ghosttyConfigDir}/config".text = ''
        window-height = 45
        window-width = 120

        theme = "Dracula"

        font-family = {{ terminal_font }}
        font-size = 14

        clipboard-read = allow
        clipboard-paste-protection = false

        keybind = global:cmd+grave_accent=toggle_quick_terminal
      '';
    };
  };
}
