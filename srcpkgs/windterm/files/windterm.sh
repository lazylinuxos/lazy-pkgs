#!/bin/bash
set -o pipefail
_APPDIR="/usr/lib/windterm"
_RUNNAME="${_APPDIR}/WindTerm"
export PATH="${_APPDIR}:${PATH}"
export LD_LIBRARY_PATH="${_APPDIR}/lib:${LD_LIBRARY_PATH}"
#export XDG_RUNTIME_DIR="${_APPDIR}/lib:${XDG_RUNTIME_DIR}"
export QT_PLUGIN_PATH="${_APPDIR}/lib:${QT_PLUGIN_PATH}"
export RUNLEVEL=3
cd "${_APPDIR}" || { echo "Failed to change directory to ${_APPDIR}"; exit 1; }
exec "${_RUNNAME}" "$@" || exit $?