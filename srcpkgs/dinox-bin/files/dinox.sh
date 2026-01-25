#!/bin/bash
set -o pipefail
export DINOX_PREFIX="/opt/dinox"
export LD_LIBRARY_PATH="$DINOX_PREFIX/lib:$LD_LIBRARY_PATH"
export GSETTINGS_SCHEMA_DIR="$DINOX_PREFIX/share/glib-2.0/schemas"
export XDG_DATA_DIRS="$DINOX_PREFIX/share:${XDG_DATA_DIRS:-/usr/share}"
export GDK_PIXBUF_MODULE_FILE="/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache"
exec "$DINOX_PREFIX/bin/dinox" "$@"
