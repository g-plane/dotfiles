# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/.yarn/bin:$HOME/.config/composer/vendor/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.deno/bin:$PATH

export ZSH="/home/gplane/.oh-my-zsh"

ZSH_THEME="pi"

plugins=(
    git
    yarn-autocompletions
    fast-syntax-highlighting
    zsh-autosuggestions
    icd
)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

alias ls='exa'
alias art='php artisan'
alias tinker='php artisan tinker'
alias cb='cargo build'
alias cbr='cargo build --release'
alias ck='cargo check'
alias ct='cargo test'
alias cf='cargo fmt'
alias cr='cargo run'
alias y='yarn'
alias yb='yarn build'
alias yd='yarn dev'
alias ya='yarn add'
alias yad='yarn add --dev'
alias yr='yarn remove'

export GOPATH=/mnt/work/go

# opam configuration
test -r /home/gplane/.opam/opam-init/init.zsh && . /home/gplane/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
