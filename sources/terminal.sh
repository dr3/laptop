
# Get the git branch name
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }

# Set the terminal prompt to clean folder name, and git branch (if in git repo) 
export PS1="\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Go away zsh, bash forever
export BASH_SILENCE_DEPRECATION_WARNING=1

# Set the history size to 4000
export HISTSIZE=4000
