#
# Set VScode & Iterm colours
#
light() {
  sed -i -e 's/"workbench.colorTheme": ".*"/"workbench.colorTheme": "Default Light+"/g' "$HOME/Library/Application Support/Code/User/settings.json";
  lightIterm;
}

dark() {
  sed -i -e 's/"workbench.colorTheme": ".*"/"workbench.colorTheme": "Visual Studio Dark"/g' "$HOME/Library/Application Support/Code/User/settings.json";
  darkIterm;
}

#
# Instals my iTerm2 profile
#
cat ~/dev/laptop/files/iterm-dynamic.json > ~/Library/Application\ Support/iTerm2/DynamicProfiles/drew.json

#
# Set iTerm2 profile based on VScode theme
#
if grep -q Default Light+ "$HOME/Library/Application Support/Code/User/settings.json"; then
  echo -e "\033]50;SetProfile=DrewLightProfile\a"
  clear;
else
  echo -e "\033]50;SetProfile=DrewDarkProfile\a"
  clear;
fi
