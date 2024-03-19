set fish_greeting

set PATH "$HOME/.npm/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
set -gx EDITOR nvim

alias ls='eza'
alias ll='eza -lh'
alias art='php artisan'
alias tinker='php artisan tinker'
alias cb='cargo build'
alias cbr='cargo build --release'
alias ck='cargo check'
alias ct='cargo test'
alias cf='cargo fmt'
alias cr='cargo run'

if status is-interactive
  alias cd='icd'

  starship init fish | source
end
