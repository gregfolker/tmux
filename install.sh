#!/usr/bin/env bash

INSTALL_SCRIPT="${0}"
INSTALL_DIR="${0%/*}"

TMUXCONF="$HOME/.tmux.conf"

echo "Running ${INSTALL_SCRIPT}..."

if [[ -e ${TMUXCONF} ]] ; then
   echo "Creating a backup of ${TMUXCONF} as ${TMUXCONF}-old..."
   mv ${TMUXCONF} ${TMUXCONF}-old
fi

touch ${TMUXCONF} && ln -sf "${PWD}/.tmux.conf" ${TMUXCONF} && echo "Successfully created new link to .tmux.conf!"
