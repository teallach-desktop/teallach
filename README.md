<div align="center">
  <img src="https://teallach-desktop.github.io/images/bang-light.png"/>
  <p>[https://teallach-desktop.github.io/]</p>
</div>

[https://teallach-desktop.github.io/]: https://teallach-desktop.github.io/

# Name

In Gaelic teallach means forge, hearth, fireplace or even the large stone that
backs the fireplace in a croft. It has also been known to signify an anvil or
furnace.

# Why

There is profound beauty in a simple openbox/tint2 setup.

# What

Informal bumbles of ideas forming a thin veneer on top of labwc.

- [x] `teallach-welcome`: a setup script to choose keyboard layout and so on
- [x] `teallach-menu`: a configurable wrapper for labwc-menu-generator
- [x] `teallach-nitrogen`: wallpaper browser and swaybg wrapper
- [x] `tint`: a Wayland panel inspired by tint2

# How

If you do not have `tint`, `labwc-menu-generator` and/or `labwc-tweaks`, you
can install these with:

    ./install-subprojects

Then just run:

    ./configure
    make
    make install
    teallach-welcome
    teallach

Files will be installed as follows (unless you specify a different `--prefix`
when running `./configure`):

- `~/bin/teallach-*`
- `~/bin/tl-*`
- `~/.local/share/teallach/`
- `~/.local/share/themes/teallach/`
- `~/.local/share/images/teallach/`
- `~/.local/share/wayland-sessions/teallach-*`
- `~/.local/share/applications/teallach-*`

The teallach-welcome script additionally adds some files to:

- `~/.config/teallach/`

# Namespaces

We use `teallach` for porcelain commands, and `tl` for plumbing commands.

# License

GPL3 to align with BunsenLabs and Deadbang for easier sharing.
