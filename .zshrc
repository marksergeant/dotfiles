# Pull in all the third party files that make zsh the way we want it.

ZSH_DISABLE_COMPFIX="true"
source ~/.zsh/checks.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/aliases.zsh
test -e /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh && source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh

test -e /usr/local/share/antigen/antigen.zsh && source /usr/local/share/antigen/antigen.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ -f /etc/environment ]; then
	source /etc/environment
fi

# Define perl requirements
PATH="/snap/bin:~/Library/Python/3.7/bin:${HOME}/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="${HOME}/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"${HOME}/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"; export PERL_MM_OPT;
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="powerlevel9k"

# Define a default user
DEFAULT_USER='msergeant'

POWERLEVEL9K_INSTALLATION_DIR=${HOME}/.oh-my-zsh/custom/themes/powerlevel9k/
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_OS_ICON_BACKGROUND='009'
POWERLEVEL9K_OS_ICON_FOREGROUND='015'
POWERLEVEL9K_ROOT_FOREGROUND='009'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="008"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="015"
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT="true"
POWERLEVEL9K_CONTEXT_TEMPLATE="%n%B%F{009}@%b%f%m"
POWERLEVEL9K_DIR_HOME_BACKGROUND="012"
POWERLEVEL9K_DIR_HOME_FOREGROUND="015"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="015"
POWERLEVEL9K_NODE_VERSION_BACKGROUND="black"
POWERLEVEL9K_NODE_VERSION_FOREGROUND="007"
POWERLEVEL9K_NODE_VERSION_VISUAL_IDENTIFIER_COLOR="002"
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="007"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="007"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="007"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_FOREGROUND="007"
POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR="001"
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="007"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M} %F{003}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('os_icon' 'context' 'dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('battery' 'load' 'ram_joined' 'time')
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B2'

# Define completion components.
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

# Couple of visual components
DISABLE_AUTO_TITLE="false"
COMPLETION_WAITING_DOTS="true"

# Drag in some useful plugins
plugins=(
  ansible
  git
  battery
  cpanm
  debian
  history
  command-not-found
  sudo
  systemadmin
  vagrant
  tmux
  ubuntu
  vi-mode
  web-search
)

# Enable vi bindings on the cli.
bindkey -v
set -o vi

eval $(dircolors -b ~/.dircolors)

source $ZSH/oh-my-zsh.sh
