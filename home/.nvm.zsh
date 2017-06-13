export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Auto change the nvm version based on a .nvmrc file based on the current directory. See https://github.com/creationix/nvm/issues/110#issuecomment-190125863
autoload -U add-zsh-hook
load-node-version() {
  if [[ -f .node-version && -r .node-version ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-node-version
