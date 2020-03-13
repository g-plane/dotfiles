export PATH=$HOME/.yarn/bin:$HOME/.config/composer/vendor/bin:$HOME/.cargo/bin:$PATH

export ZSH="/home/gplane/.oh-my-zsh"

ZSH_THEME="pi"

plugins=(
    git
    yarn
    fast-syntax-highlighting
    zsh-autosuggestions
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

# opam configuration
test -r /home/gplane/.opam/opam-init/init.zsh && . /home/gplane/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh
zplug load
