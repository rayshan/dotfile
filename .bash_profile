# Setting PATH for Python 3.3
# The orginal version is saved in Ray.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in Ray.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# use latest git version instead of apple's xcode / command line tool's
PATH="/usr/local/git/bin:$PATH"

# git auto complete
# GIT_COMPLETION_FILE='/usr/share/git-core/git-completion.bash';
# GIT_PROMPT_FILE='/usr/share/git-core/git-prompt.sh';
GIT_COMPLETION_FILE='/usr/local/git/contrib/completion/git-completion.bash';
GIT_PROMPT_FILE='/usr/local/git/contrib/completion/git-prompt.sh';
if [ -f $GIT_COMPLETION_FILE ]; then
	. $GIT_COMPLETION_FILE
fi
if [ -f $GIT_PROMPT_FILE ]; then
	. $GIT_PROMPT_FILE
fi
export GIT_PS1_SHOWDIRTYSTATE=true # adds * to branch if branch was changed
export GIT_PS1_SHOWUNTRACKEDFILES=true

# \h host name, \u user name, \w current path, \W CWD current working directory
STARTCOLOR1='\[\e[0;35m\]'; # purple
STARTCOLOR2='\[\e[0;90m\]'; # dark gray
ENDCOLOR='\[\e[m\]';
UN='@\U'
HN='\H'
CWD='\W'
GITBRANCH='$(__git_ps1 "(%s)")'
PROMPT=' > '
export PS1=$STARTCOLOR1$CWD$ENDCOLOR$STARTCOLOR2$GITBRANCH$ENDCOLOR$STARTCOLOR1$PROMPT$ENDCOLOR

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

###
# alias
###

alias ll="ls -la"
alias c="clear"
alias g="git"
alias ".."=". ~/.bash_profile"
