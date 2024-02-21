function git_develop_branch
  for branch in dev develop
    if command git show-ref -q --verify refs/heads/$branch
      echo $branch
      return 0
    end
  end
  return dev
end

function git_main_branch
  for branch in main master
    if command git show-ref -q --verify refs/heads/$branch
      echo $branch
      return 0
    end
  end
  return dev
end

function git_last_comitter_branch
  set -l branches (string split "\n" (git branch --sort=-committerdate --format='%(refname:short)'))
  echo $branches[1]
end

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsn='git bisect new'
alias gbso='git bisect old'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gbl='git blame -w'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbdd='git branch --delete --force'
alias gcl='git clone --recurse-submodules'
alias gc='git commit --message'
alias gca='git commit --all --message'
alias gcm='git commit --verbose --amend'
alias gcmn='git commit --verbose --no-edit --amend'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdcw='git diff --cached --word-diff'
alias gds='git diff --staged'
alias gdw='git diff --word-diff'
alias gfo='git fetch origin'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glods='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=short'
alias glod='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset"'
alias glola='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
alias glols='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --stat'
alias glol='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset"'
alias glo='git log --oneline --decorate'
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glg='git log --stat'
alias glgp='git log --stat --patch'
alias gm='git merge'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gl='git pull origin "$(git branch --show-current)"'
alias glu='git pull upstream "$(git branch --show-current)"'
alias gla='git pull --autostash origin "$(git branch --show-current)"'
alias gp='git push origin "$(git branch --show-current)"'
alias gpf='git push --force-with-lease --force-if-includes origin "$(git branch --show-current)"'
alias gpu='git push --set-upstream origin "$(git branch --show-current)"'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase --interactive'
alias grbo='git rebase --onto'
alias grbs='git rebase --skip'
alias grbd='git rebase $(git_develop_branch)'
alias grbm='git rebase $(git_main_branch)'
alias gr='git remote'
alias grv='git remote --verbose'
alias gra='git remote add'
alias grrm='git remote remove'
alias grmv='git remote rename'
alias grset='git remote set-url'
alias grup='git remote update'
alias gpristine='git reset --hard && git clean --force -dfx'
alias grs='git restore'
alias grss='git restore --source'
alias grst='git restore --staged'
alias grev='git revert'
alias greva='git revert --abort'
alias grevc='git revert --continue'
alias grm='git rm'
alias grmc='git rm --cached'
alias gstall='git stash --all'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsta='git stash push'
alias gsts='git stash show --patch'
alias gst='git status'
alias gsw='git switch'
alias gswc='git switch --create'
alias gswd='git switch $(git_develop_branch)'
alias gswm='git switch $(git_main_branch)'
alias gswl='git switch "$(git_last_comitter_branch)"'