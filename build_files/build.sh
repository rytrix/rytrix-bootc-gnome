#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# Brave browser repo
# cat << EOF > /etc/yum.repos.d/brave-browser.repo
# [brave-browser]
# name=Brave Browser
# enabled=1
# autorefresh=1
# baseurl=https://brave-browser-rpm-release.s3.brave.com/x86_64
# gpgcheck=1
# repo_gpgcheck=1
# gpgkey=https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
# EOF

# dnf5 install -y dnf-plugins-core
# dnf5 config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo -y

dnf5 group install "sway desktop"

dnf5 install -y miracle-wm \
                fish btop distrobox fastfetch fzf htop iotop tldr kitty NetworkManager-tui podman-tui \
                libratbag-ratbagd waypipe \
                virt-manager \
                glibc-langpack-en

systemctl enable libvirtd
