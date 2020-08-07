# Highly customised .cshrc ...
#
# $Id: .cshrc 7 2009-09-14 07:14:33Z msergeant $
# $Author: msergeant $
# $Rev: 7 $
# $LastChangedDate: 2009-09-14 17:14:33 +1000 (Mon, 14 Sep 2009) $
# Copyright © 2009: Mark Sergeant
#

setenv SSHOPTS 'NULL'

if ( $?prompt ) then
	stty erase ^H
	setenv HOSTNAME `hostname | awk -F\. '{print $1}'`
	umask 022
	setenv IRCNAME "Mark Sergeant"
	setenv IRCNICK "^Sarge^"

	set curtime=`date '+%H%M' | sed 's/^0//' | sed 's/^0//'`

	if ( $curtime < 1030 ) then
		if ( -f ~/todo ) then
			echo "TODO list for [31;1m"`date '+%d/%m/%Y'`" [39m:"
			echo ""
			/bin/cat ~/todo | /usr/bin/sed 's/^/-\ /g'
			echo ""
		endif
	else 
		if ( -x /usr/games/fortune ) then
			echo ""
			echo "- [33;1mFortune[39;0m -"
			echo ""
			/usr/games/fortune
			echo ""
		endif
	endif

	setenv EDITOR vi
	setenv PAGER 'less -F -X4'
	setenv PERLDOC_PAGER 'less -X4'
	setenv BLOCKSIZE K
	setenv SSHOPTS '-vXA'

	# Workout path goodness.
	set PATH_OPTS = "/bin /usr/bin /usr/local/bin /sbin /usr/sbin /usr/local/sbin . $path"

	# Solaris specific paths.
	if ( -d /usr/ucb ) then
		set PATH_OPTS = "/usr/ucb/bin /usr/ucb/sbin $PATH_OPTS"
		alias ps '/usr/ucb/ps'
	endif

	if ( -d /usr/xpg4 ) then
		set PATH_OPTS = "/usr/xpg4/bin /usr/xpg4/sbin $PATH_OPTS"
	endif

	if ( -d /usr/xpg6 ) then
		set PATH_OPTS = "/usr/xpg6/bin /usr/xpg6/sbin $PATH_OPTS"
	endif

	# /usr pkg should always come first so we apply this last.
	if ( -d /usr/pkg ) then
		set PATH_OPTS = "/usr/pkg/bin /usr/pkg/sbin $PATH_OPTS"
	endif

	# Local Admin.
	if ( -d ~/bin ) then
		set PATH_OPTS = "~/bin $PATH_OPTS"
	endif

	## CYGWIN 
	if ( `uname  | awk -F\_ '{print $1}'` == CYGWIN ) then
		alias ls "ls -F --color=always"
		alias cwdcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
		alias postcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
		alias precmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
		setenv TERM xterm-color
	endif
	 
	## FreeBSD
	if ( `uname` == FreeBSD ) then
		alias ls "ls -F -P -G"
		setenv LSCOLORS "gxfxcxdxHxegedabagacad"
		if ( $TERM == xterm || $TERM == dialup || $TERM == screen ) then
			setenv TERM xterm-color
		endif
		if ( $TERM == xterm-color ) then
			alias cwdcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
			alias postcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
			alias precmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
		endif
	endif

	## SunOS / Solaris
	if ( `uname` == SunOS ) then
		alias ls "ls -F"
		setenv TERM "dtterm"
	endif

	## Mac OS X & Darwin
	if ( `uname` == Darwin ) then
		setenv SSHOPTS '-vA'
		alias ls "/bin/ls -F -P -G"
		alias cwdcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
		alias postcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
		alias precmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
		alias egrep '/usr/bin/egrep --color=auto'
		setenv LSCOLORS "gxfxcxdxHxegedabagacad"

		#alias locate mdfind "kMDItemDisplayName == '\!:1'"

		if ( -x /usr/local/bin/angband ) then
			alias angband "setenv TERM ansi && /usr/local/bin/angband -mgcu -- -b; setenv TERM xterm-256color"
			setenv ANUSER `echo $user | perl -e 'map {print ucfirst} <STDIN>'`
			alias backupangband "cp /Users/msergeant/.angband/save/$uid.$ANUSER ~/Dropbox/saves/$uid.$ANUSER"
			alias restoreangband "cp ~/Dropbox/saves/$uid.$ANUSER /Users/msergeant/.angband/save/$uid.$ANUSER "
		endif

		if ( -d /usr/local/instantclient_10_2 ) then
			setenv ORACLE_HOME /usr/local/instantclient_10_2
			setenv DYLIB_LIBRARY_PATH /usr/local/instantclient_10_2
			setenv DYLD_LIBRARY_PATH /usr/local/instantclient_10_2
			set PATH_OPTS = "$ORACLE_HOME $PATH_OPTS"
		else # Cater for full installations
			if (-d /usr/local/oracle_64 ) then
				setenv ORACLE_HOME /usr/local/oracle_64
				setenv LIB_LIBRARY_PATH /usr/local/oracle_64
				setenv LD_LIBRARY_PATH /usr/local/oracle_64
				setenv DYLD_LIBRARY_PATH /usr/local/oracle_64
				set PATH_OPTS = "$ORACLE_HOME $PATH_OPTS"
			endif
		endif
	endif

	## Linux
	if ( `uname` == Linux ) then
		alias ls "ls -F --color=auto"
		setenv LS_COLORS 'di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
		# Kludge to get around screen not playing nicely with ^H
		if ( $TERM == xterm || $TERM == dialup || $TERM == screen ) then
			alias cwdcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
			alias postcmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
			alias precmd '/bin/echo -n "]0;[${user}@${HOSTNAME}] ${cwd}"'
			setenv TERM xterm-color
		endif
		if ( -d /usr/local/instantclient10_1 ) then
			setenv ORACLE_HOME /usr/local/instantclient10_1
			setenv LIB_LIBRARY_PATH /usr/local/instantclient10_1
			setenv LD_LIBRARY_PATH /usr/local/instantclient10_1
			set PATH_OPTS = "$ORACLE_HOME $PATH_OPTS"
		else # Cater for full installations
			if (-d /usr/local/oracle_64 ) then
				setenv ORACLE_HOME /usr/local/oracle_64
				setenv LIB_LIBRARY_PATH /usr/local/oracle_64
				setenv LD_LIBRARY_PATH /usr/local/oracle_64
				set PATH_OPTS = "$ORACLE_HOME $PATH_OPTS"
			endif
		endif
	endif

	## Other aliases

	set path = ( $PATH_OPTS )

	if ( -f `which less` ) then
		alias more $PAGER
		alias less $PAGER
	endif

	if ( -f `which vim` ) then
		alias vi "vim -X"
	endif

	if ( -f `which ispell` ) then
		alias spell "ispell"
	endif

	if ( -f /usr/local/bin/svn ) then
		alias svn /usr/local/bin/svn
	endif

	alias h history

	# Set Prompts and other csh variables

	set prompt="%B%{[31m%}[%{[37m%}%b%n%B%{[34m%}@%{[37m%}%b%m%B%{[31m%}] %{[37m%}%/ %{[30m%}%B.:%b "
	set prompt2=".: %T || "
	set autolist
	set correct = cmd
	set intuition
	set implicitcd 
	set rmstar

	# Setup CVS directories
	setenv CVS_RSH			"ssh"
	alias cvs_internal		"setenv CVSROOT 'cvs.internal:/usr/local/cvsroot/'"
	alias pkgsrc_cvs		"setenv CVSROOT 'anoncvs@anoncvs.NetBSD.org:/cvsroot'"

	# Personal machines
	alias sleekgeek			"ssh $SSHOPTS msergeant@zeus.sleekgeek.net"
	alias snsonline			"ssh $SSHOPTS msergeant@snsonline.net"
	alias mac-mini			"ssh $SSHOPTS mark-sergeants-mac-mini.274063113.members.btmm.icloud.com"
	alias marks-mbp			"ssh $SSHOPTS marks-macbook-pro.274063113.members.btmm.icloud.com"

	# To update the puppet list, on puppetmaster3.internal, run the following.
	# sudo puppetca --list --all | sed 's/"//g' | awk '{split($2,a,"."); print "alias " a[1] " \"ssh $SSHOPTS msergeant@"$2"\""}' > .cshrc-ssh-puppet
	# This then should be scp'ed to a machine running dropbox.
	source ~/.cshrc-ssh-puppet #Addition of puppet ssh servers.
	source ~/.cshrc-ssh-manual #Addition of manual ssh servers.
	#source ~/perl5/perlbrew/etc/cshrc

endif
# vi:set ts=4 sw=4:   #
# vim:set ts=4 sw=4:  #
