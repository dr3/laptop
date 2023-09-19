# Sets the iterm tab title
tabTitle() { echo -ne "\033]0;"$*"\007"; }

# Replaces built in cd command
#
# - If there is a .nvmrc file in the current directory, use that version of node
# - If the version of node is not installed, install it
# - Set the tab title to the current directory
#
cd() {
    builtin cd "$@";

    nvm_path=$(nvm_find_up .nvmrc | tr -d '\n')

    if [[ ! $nvm_path = *[^[:space:]]* ]]; then
        declare default_version;
        default_version=$(nvm version default);

        if [[ $default_version == "N/A" ]]; then
            nvm alias default node;
            default_version=$(nvm version default);
        fi

        if [[ $(nvm current) != "$default_version" ]]; then
            nvm use default --silent;
            echo "Moved to $(pwd) using default node $(node -v)"
        fi

    elif [[ -s $nvm_path/.nvmrc && -r $nvm_path/.nvmrc ]]; then
        declare nvm_version
        nvm_version=$(<"$nvm_path"/.nvmrc)

        declare locally_resolved_nvm_version

        locally_resolved_nvm_version=$(nvm ls --no-colors "$nvm_version" | tail -1 | tr -d '\->*' | tr -d '[:space:]')

        if [[ "$locally_resolved_nvm_version" == "N/A" ]]; then
            nvm install "$nvm_version" --silent;
            echo "Moved to $(pwd) using newly installed node $(node -v)"
        elif [[ $(nvm current) != "$locally_resolved_nvm_version" ]]; then
            nvm use "$nvm_version" --silent;
            echo "Moved to $(pwd) using node $(node -v)"
        fi
    fi

    tabTitle ${PWD##*/};
}
