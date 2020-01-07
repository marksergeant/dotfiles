# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
export PATH=$PATH~/bin:/usr/local/bin:/usr/local/sbin:~/bin:/bin:/sbin:~/Library/Python/2.7/bin:~/perl5/bin:~/.local/bin

export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH

export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=5000

# Setup terminal, and turn on colors
if [[ $BYOBU_BACKEND = '' ]]; then
	export TERM=xterm-256color
else
	export TERM=screen-256color
fi
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_COLOR='3;33'

# Locals
#
export ANUSER='Msergeant'
export IRCNAME='Mark Sergeant'
export IRCNICK='^Sarge^'
export LOGNAME='msergeant'

export SYS_BYOBU=`which byobu`

export BYOBU_PREFIX=`dirname $SYS_BYOBU | sed 's/\/bin//'`

export HOSTNAME=`hostname | awk -F\. '{print $1}'`
export EDITOR=vi
export PAGER='/usr/bin/less -F'
export PERLDOC_PAGER='/usr/bin/less'
export BLOCKSIZE=M

export NO_AT_BRIDGE=1

# SSH Options
# 
export SSHOPTS='-vA'

# GITHUB / Homebrew
#
export HOMEBREW_GITHUB_API_TOKEN="43b8cfe011bab2b4fad4cd64c05770b43290d2c2"
