#
# Instals my iTerm2 profile
#
curl -s ~/dev/laptop/files/iterm-dynamic.json -o ~/Library/Application\ Support/iTerm2/DynamicProfiles/drew.json
echo -e "\033]50;SetProfile=DrewDarkProfile\a"
clear;
