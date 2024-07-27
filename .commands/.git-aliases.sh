# Alias umum untuk perintah Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gb='git branch'
alias gcl='git clone'
alias gp='git pull'
alias gps='git push'
alias gpl='git pull'
alias gd='git diff'
alias glog='git log'
alias graph='git log --all --oneline --decorate --graph'

# Alias untuk operasi Git yang sering digunakan
alias gcam='git commit -am'
alias gcb='git checkout -b'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gpf='git push --force'

# Alias untuk penggabungan (merge) dan rebasing
alias gm='git merge'
alias gr='git rebase'
alias gri='git rebase -i'
alias grc='git rebase --continue'
alias gra='git rebase --abort'

# Alias untuk pengelolaan remote
alias grem='git remote'
alias gset='git remote set-url'
alias gpr='git pull --rebase'

# Alias untuk tindakan tambahan
alias gundo='git reset --soft HEAD^'
alias grs='git reset --hard HEAD'
alias gcln='git clean -df'

# Others

function gfp {
    git add .
    git commit -am "message: update"
    git push -u origin main
}