export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export EDITOR=vim
export ZSH="$HOME/.oh-my-zsh"

eval "$(starship init zsh)"

plugins=(
    git
    fast-syntax-highlighting
    zsh-autosuggestions
    icd
)

source $ZSH/oh-my-zsh.sh

alias ls='exa'
alias gupam='git pull --rebase --autostash upstream $(git_main_branch)'
alias art='php artisan'
alias tinker='php artisan tinker'
alias cb='cargo build'
alias cbr='cargo build --release'
alias ck='cargo check'
alias ct='cargo test'
alias cf='cargo fmt'
alias cr='cargo run'
