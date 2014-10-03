
# Copy the host specific .gitcofig to expected path
cp ~/.host-specific/.gitconfig.$HOSTNAME ~/.gitconfig.host-specific

# Setup GIT prompt
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
source ~/.git-prompt.sh

export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'
