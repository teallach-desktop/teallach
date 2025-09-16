<h2 align="center">Teallach</h2>

```
 _             _ _            _
| |           | | |          | |
| |_ ___  __ _| | | __ _  ___| |__
| __/ _ \/ _` | | |/ _` |/ __| '_ \
|  \  __/ (_| | | | (_| | (__| | | |
 \__\___|\__,_|_|_|\__,_|\___|_| |_|
```

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

The teallach-welcome script additionally adds some files to:

- `~/.config/teallach/`

# Namespaces

We use `teallach` for porcelain commands, and `tl` for plumbing commands.

# License

GPL3 to align with BunsenLabs and Deadbang for easier sharing.
