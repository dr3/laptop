#
# Set VScode & Iterm colours
#
light() {
  sed -i -e 's/"workbench.colorTheme": ".*"/"workbench.colorTheme": "Default Light\+"/g' "$HOME/Library/Application Support/Code/User/settings.json";
  dontrunmanuallylightIterm;
}
dark() {
  sed -i -e 's/"workbench.colorTheme": ".*"/"workbench.colorTheme": "Default Dark\+"/g' "$HOME/Library/Application Support/Code/User/settings.json";
  dontrunmanuallydarkIterm;
}

#
# Instals my iTerm2 profile
#
cat ~/dev/laptop/files/iterm-dynamic.json > ~/Library/Application\ Support/iTerm2/DynamicProfiles/drew.json


#
# Secret functions to set iTerm2 themes
#
dontrunmanuallylightIterm() {
  echo -e "\033]50;SetProfile=DrewLightProfile\a"
  clear;
}
dontrunmanuallydarkIterm() {
  echo -e "\033]50;SetProfile=DrewDarkProfile\a"
  clear;
}

#
# Set iTerm2 profile based on VScode theme
#
if grep -q "Default Light+" "$HOME/Library/Application Support/Code/User/settings.json"; then
  dontrunmanuallylightIterm;
else
  dontrunmanuallydarkIterm;
fi
