#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

dnf5 remove -y firefox firefox-langpacks


dnf5 install -y \
                fish zsh neovim tmux btop distrobox fastfetch fzf htop iotop tldr kitty NetworkManager-tui podman-tui zoxide \
                libratbag-ratbagd waypipe tailscale wireguard-tools steam-devices \
                virt-manager \
                sway waybar river wofi mako gammastep i3 awesome grim slurp network-manager-applet nm-connection-editor brightnessctl \

                # gnome-themes-extra gnome-tweaks \

systemctl enable libvirtd

systemctl disable rpm-ostreed-automatic.timer
systemctl disable flatpak-system-update.timer
systemctl --global disable flatpak-user-update.timer
