export PATH=$HOME/.npm/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export EDITOR=vim

alias ls='exa'
alias ll='exa -lh'
alias gupam='git pull --rebase --autostash upstream $(git_main_branch)'
alias art='php artisan'
alias tinker='php artisan tinker'
alias cb='cargo build'
alias cbr='cargo build --release'
alias ck='cargo check'
alias ct='cargo test'
alias cf='cargo fmt'
alias cr='cargo run'
alias tmp='builtin cd /tmp'

eval "$(starship init zsh)"
source "$HOME/.zinit/bin/zinit.zsh"

autoload -Uz compinit
compinit

zinit snippet OMZL::completion.zsh
zinit snippet OMZL::functions.zsh
zinit snippet OMZL::git.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZP::git
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light g-plane/icd
