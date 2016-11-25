#!/bin/bash
set -e

repo="$1"
if [ -z "$repo" ]; then
	echo >&2 "usage: $0 repo"
	echo >&2 "   ie: $0 hylang"
	exit 1
fi

bashbrew cat \
		-F "$(dirname "$BASH_SOURCE")/$(basename "$BASH_SOURCE" .sh).tmpl" \
                "https://raw.githubusercontent.com/doublebyte1/geonetwork/master/geonetwork"
