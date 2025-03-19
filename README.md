# ✨ My Arch + Hyprland Dotfiles 🚀

These are my personal dotfiles for an Arch Linux setup with Hyprland.

## 📦 What's Inside?

* **Hyprland:** 💎 The dynamic tiling Wayland compositor.
* **Kitty:** 🐱 A fast, feature-rich GPU terminal emulator.
* **Waybar:** 📊 Highly customizable Wayland bar.
* **Dunst:** 🔔 A lightweight and customizable notification daemon.
* **Wlogout:** 🚪 A simple logout menu for Wayland.
* **Rofi:** 🔍 A window switcher, application launcher and dmenu replacement.
* **Neovim:** 📝 The hyperextensible Vim-based text editor.
* **Nerd Font:** 🔡 Requires a Nerd Font for icons (e.g., `ttf-cascadia-code-nerd`).

## 🛠️ Installation

1.  Clone this repository:

    ```bash
    git clone https://github.com/shyamjames/dotfiles.git ~/.dotfiles
    ```

2.  Create symbolic links:

    ```bash
    ln -sf ~/.dotfiles/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
    ln -sf ~/.dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
    ln -sf ~/.dotfiles/waybar/config ~/.config/waybar/config
    ln -sf ~/.dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc
    ln -sf ~/.dotfiles/wlogout/style.css ~/.config/wlogout/style.css
    ln -sf ~/.dotfiles/wlogout/config ~/.config/wlogout/config
    ln -sf ~/.dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
    ln -sf ~/.dotfiles/nvim ~/.config/nvim
    ```

3.  (Optional) Install required packages.

    ```bash
    sudo pacman -S hyprland kitty waybar dunst wlogout rofi neovim
    ```
    
    Install a Nerd Font. For example, using `yay`:

    ```bash
    yay -S ttf-cascadia-code-nerd
    ```

## ⚙️ Configuration

Feel free to customize these dotfiles to your liking! 🎨

* Edit the configuration files in `~/.dotfiles/`.
* Reload Hyprland or other applications for changes to take effect.
* Heavily based on dotfiles by [@typecraft-dev](https://github.com/typecraft-dev).
* Catppuccin theme applied throughout.

