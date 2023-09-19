alias ga="git add ."
alias gs='git status;'
alias gp="git push origin HEAD;"
alias gpf="git push origin HEAD -f;"
alias gpn="git push origin HEAD --no-verify;"
alias gpnf="git push origin HEAD -f --no-verify;"
gr() { git rebase -i -S HEAD~$1; }

# Lazy "chuck up on github" command
alias moreit="ga; git commit -m \"🔧 Continue to implement and debug\" --no-verify; gpn"

# Create a commit with no content
alias empty='git commit --allow-empty -S -m "Empty commit to force rebuild/rerun"'

gco() { 
    git commit -S -m "$*" --no-verify;
}
alias gcon="gco"

# Open current repo in browser
ghc() { 
    open $(git config remote.origin.url | sed "s/git@\(.*\):\(.*\).git/https:\/\/\1\/\2/")/$1$2 
}
alias gh='ghc tree/$(git symbolic-ref --quiet --short HEAD )';
