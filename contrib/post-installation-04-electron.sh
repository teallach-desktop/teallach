#!/bin/sh

mkdir -p ~/.config

cat > ~/.config/electron-flags.conf <<- EOF
	--enable-features=UseOzonePlatform
	--ozone-platform=wayland
EOF

cat > ~/.config/chromium-flags.conf <<- EOF
	--enable-features=UseOzonePlatform
	--ozone-platform=wayland
EOF
