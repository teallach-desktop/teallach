#!/bin/bash

mkdir -p ~/.config/foot

cat > ~/.config/foot/foot.ini <<- EOF
	[main]
#	include = /usr/share/foot/themes/apprentice
	font = DeJaVu Sans Mono:size=10
	initial-window-size-chars = 120x35

	[url]
	launch = firefox \${url}
EOF

