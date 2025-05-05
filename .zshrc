export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
eval "$(zoxide init --cmd cd zsh)"
# nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/share/nvm/init-nvm.sh" ] && . "/usr/share/nvm/init-nvm.sh"
[ -s "/usr/share/nvm/bash_completion" ] && . "/usr/share/nvm/bash_completion"
[ -f "/home/darron/.ghcup/env" ] && . "/home/darron/.ghcup/env" # ghcup-env

# bun completions
[ -s "/home/darron/.bun/_bun" ] && source "/home/darron/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
