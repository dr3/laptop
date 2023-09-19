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

# Opens mitm web interface
alias mitm="mitmweb --set web_port=8082 --ssl-insecure"

# Clears the terminal buffer entirely
cb() { printf "\033[2J\033[3J\033[1;1H"; }

# because pnpm is too many letters
p() { pnpm $*; }
