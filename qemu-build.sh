#!/usr/bin/sh

rm nixos.qcow2 || true

nix-build '<nixpkgs/nixos>' -A vm \
-I nixpkgs=channel:nixos-23.11 \
-I nixos-config=./configuration.nix
