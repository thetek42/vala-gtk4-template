#!/usr/bin/env bash
set -xe

meson build
cd build
ninja
./de.thetek.vala-gtk-template
