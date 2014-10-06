# echo "Hello from .bash_profile"
# Run when new shell is created

# Get the hostid
export HOSTID=`sed s/[.].*// <<< $HOSTNAME`
echo $HOSTID

# Copy the host specific .gitcofig to expected path
cp ~/.host-specific/.gitconfig.$HOSTID ~/.gitconfig.host-specific

[[ -r ~/.bashrc ]] && . ~/.bashrc


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile
