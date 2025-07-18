# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
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

# hyprshot
export HYPRSHOT_DIR="$HOME/Screenshots/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
