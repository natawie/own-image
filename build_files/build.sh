#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y tmux 
dnf5 install -y zsh
dnf5 install -y zsh-autosuggestions
dnf5 install -y neovim
dnf5 install -y podman
dnf5 install -y podman-compose
dnf5 install -y clang
dnf5 install -y cmake
dnf5 install -y gnucobol
dnf5 install -y gnucobol-esql
dnf5 install -y lua
dnf5 install -y lua-devel
dnf5 install -y luajit
dnf5 install -y luajit-devel
dnf5 install -y openssl-devel
dnf5 install -y p7zip
dnf5 install -y p7zip-plugins
dnf5 install -y python3-pip
dnf5 install -y realtime-setup
dnf5 install -y python3-virtualenv
dnf5 install -y rsms-inter-fonts
dnf5 install -y rsms-inter-vf-fonts
dnf5 install -y qemu
dnf5 install -y qemu-kvm
dnf5 install -y systemtap
dnf5 install -y spice-gtk-tools
dnf5 install -y swtpm
dnf5 install -y virt-manager
dnf5 install -y gnome-shell-extension-pop-shell
dnf5 install -y android-tools
dnf5 install -y edk2-tools
dnf5 install -y edk2-ovmf
dnf5 install -y edk2-aarch64
dnf5 install -y genisoimage
dnf5 install -y kitty
dnf5 install -y gnome-tweaks
dnf5 install -y calc
dnf5 install -y hyfetch
dnf5 install -y fastfetch
#dnf5 install -y texlive-scheme-full
dnf5 install -y wine
dnf5 install -y wine-dxvk
dnf5 install -y distrobox

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable libvirtd
