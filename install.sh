#!/usr/bin/env bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

if [[ ! -e "${HOME}/.tmux.conf" ]]; then
    echo ">> Linking tmux configuration."
    ln -s "${SCRIPTPATH}/tmux.conf" "${HOME}/.tmux.conf"
fi

echo "source '${SCRIPTPATH}/init'" >> ~/.zshrc