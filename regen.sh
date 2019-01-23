#!/usr/bin/env sh

set -e

[ -d gen ] || mkdir -p gen
cd gen
capnp compile \
	-ohaskell \
	--src-prefix=../schema/ \
	../schema/sandstorm/*.capnp
