# Open and set bashrc files
alias newalias="code ~/.bashrc"
alias addalias="source ~/.bashrc"

alias c='clear'

# Disable ability for mac to sleep (even when lid is closed)
alias sleepoff='sudo pmset -b sleep 0; sudo pmset -b disablesleep 1'
alias sleepon='sudo pmset -b sleep 16; sudo pmset -b disablesleep 0'

alias killnode='kill -9 `ps auxwwwe | egrep " [n]ode .+ PWD=$PWD" | awk "{ print $2 }"`'

# Opens a small chrome window with normal header
# Usage: `chrome https://www.bbc.co.uk/news`
chrome() { /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --app="$1" &> /dev/null; echo "Opened $1 in a new window!";}

# Git
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
