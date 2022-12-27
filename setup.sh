#!/bin/bash
# Linux Environement Rice Setup
# version: draft
# init: 2022-12-27 14:38
PM=dnf
PACKAGES=(bspwm sxhkd polybar rofi dunst feh)
REPO="moughamir/rice"

getRice ()
{
  echo "Getting Rice from $REPO"
  gh repo clone $REPO
}
install ()
{
  for PKG in PACKAGES
  do
    echo "Installing package : $PKG"
    sudo $PM install $PKG -y
  done
  
}
