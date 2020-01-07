# Global aliases.
#
alias -- angband='~/games/angband -mgcu -- -b -n5'
alias -- brewuptodate='/usr/local/bin/brew update && /usr/local/bin/brew upgrade && /usr/local/bin/brew cask upgrade && /usr/local/bin/brew cleanup'
alias -- backupangband='cp ~/.angband/Angband/save/Msergeant ~/Dropbox/saves/angband-Msergeant'
alias -- restoreangband='cp ~/Dropbox/saves/angband-Msergeant ~/.angband/Angband/save/Msergeant '
alias -- vi='vim -X'
alias -- zs='source ~/.zshrc'
case $(uname) in
	Darwin*)
		#alias -- ls='/bin/ls -F -P -G'
		# Use spotlight instead of locate
		function locate {  mdfind "kMDItemDisplayName == '$@'wc"; }
		;;
	Linux*)
		#alias -- ls='/bin/ls -F --color=auto'
		alias pbcopy='xclip -selection clipboard'
		alias pbpaste='xclip -selection clipboard -o'
		;;
esac

# Commands to start / stop aws host.
alias -- aws-host-01-status='aws ec2 describe-instances --instance-ids=i-d9edf806'
alias -- aws-host-01-start='aws ec2 start-instances --instance-ids=i-d9edf806'
alias -- aws-host-01-stop='aws ec2 stop-instances --instance-ids=i-d9edf806'

# Ping
alias -- p1='\ping 1.1.1.1'
