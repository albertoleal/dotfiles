#!/usr/bin/env bash

set -euo pipefail

log() {
  echo
  echo "----------------------------------------------------------------------"
  echo "$1"
  echo "----------------------------------------------------------------------"
  echo
}

install_bash_it() {
  git clone --depth=1 https://github.com/Bash-it/bash-it.git "$HOME/.bash_it"
  "$HOME/.bash_it/install.sh"
}

install_ansible() {
  log "Installing/upgrading Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install ansible
}

log "Installing/Updating home..."

if [[ ! -d "$HOME/.bash_it" ]] ; then
  install_bash_it
fi

if ! which ansible-playbook > /dev/null 2>&1 ; then
  echo "ansible-playbook not found on \$PATH, installing"
  install_ansible
fi

(
  cd "$(dirname "$0")"
  cmd="ansible-playbook -i localhost, --con local playbook.yml"
  $cmd
  )
