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

  set -gx LANG en_US.UTF-8
  set -gx LC_ALL en_US.UTF-8

  starship init fish | source

  fish_config theme choose 'Dracula'
end

function fish_should_add_to_history
  for cmd in gvt gc gca gcl gclnb tmp cd mkdir rm
    string match -qr "^$cmd" -- $argv; and return 1
  end
  return 0
end
