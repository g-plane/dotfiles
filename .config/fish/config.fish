set fish_greeting

set PATH "$HOME/.npm/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
set -gx EDITOR nvim

alias ls='eza'
alias ll='eza -lh'
alias cb='cargo build'
alias cbr='cargo build --release'
alias ck='cargo check'
alias ct='cargo test'
alias cta='cargo test --all-features'
alias cf='cargo fmt'
alias cr='cargo run'
alias cl='cargo clippy'
alias ci='cargo insta test --review --all-features'

if status is-interactive
  alias cd='icd'

  starship init fish | source
end
