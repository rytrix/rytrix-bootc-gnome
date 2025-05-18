#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

dnf5 remove -y firefox firefox-langpacks

dnf5 install -y gnome-themes-extra gnome-tweaks \
                sway waybar river wofi mako gammastep i3 awesome grim slurp lxqt-policykit network-manager-applet nm-connection-editor \
                fish neovim tmux btop distrobox fastfetch fzf htop iotop tldr kitty NetworkManager-tui podman-tui zoxide \
                libratbag-ratbagd waypipe tailscale wireguard-tools steam-devices \
                virt-manager \

systemctl enable libvirtd
