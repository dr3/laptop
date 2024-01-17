#
# A wide variety of paths that I have needed in the past
# Doesnt really do any harm so I havent cleaned it in a while.
#
export GPG_TTY=$(tty)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH="$HOME/.serverless/bin:$PATH"
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/opt/homebrew/bin:$PATH
export PATH=~/bin:$PATH
export PATH="$HOME/.serverless/bin:$PATH"
export PATH=$(pyenv root)/shims:$PATH
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

eval "$(pyenv init --path)"
