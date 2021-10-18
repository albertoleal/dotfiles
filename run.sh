#!/usr/bin/env bash

set -euo pipefail

log() {
  echo
  echo "----------------------------------------------------------------------"
  echo "$1"
  echo "----------------------------------------------------------------------"
  echo
}

install_ansible() {
  log "Installing/upgrading Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install ansible
}

link_symlinks() {
  for file in $(find `pwd` -name "*.symlink"); do
    destination="$HOME/.`basename \"${file%.*}\"`"

    # Create a backup if file exists
    if [[  -f "$destination" ]] || [[ -L "$destination" ]]; then
      mv "$destination" "${destination}.backup"
    fi

    ln -s  "$file" "$destination"
    success "Linked $file to $destination"
  done
}

success () {
   printf "\r\033[2K  [ \033[00;32mOK\033[0m ] %s \n" "$1"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] %s \n" "$1"
  echo ''
  exit
}

log "Installing/Updating home..."

if ! which ansible-playbook > /dev/null 2>&1 ; then
  echo "ansible-playbook not found on \$PATH, installing"
  install_ansible
fi

(
  cd "$(dirname "$0")"
  cmd="ansible-playbook -i localhost, --con local playbook.yml"
  $cmd
)

link_symlinks
