# neofetch
bonsai -T -L 30 -g "$COLUMNS",50 -m "$(fortune)"
print ""
# cbonsai -p -m "$(fortune)"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# CUSTOM ALIASES
alias ls="eza -al"
alias ll="eza -alT"
alias la="eza"

alias gitsetup="eval '$(ssh-agent -s)' && ssh-add -k ~/.ssh/github"

# CUSTOM SCRIPTS
export PATH=$PATH:~/bin

# ZOXIDE RUN
eval "$(zoxide init zsh)"
alias cd=z
alias cat='bat'


# ESP32 IDF
alias espidf='. $HOME/esp/esp-idf/export.sh'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ctrl + left|right
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

