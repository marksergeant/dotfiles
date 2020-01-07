# checks (stolen from zshuery)
if [[ $(uname) = 'Linux' ]]; then
	export IS_LINUX=1
fi

if [[ $(uname) = 'Darwin' ]]; then
	export IS_MAC=1
fi

if [[ -x `which brew` ]]; then
	export HAS_BREW=1
fi

if [[ -x `which apt` ]]; then
	export HAS_APT=1
fi

if [[ -x `which aptitude` ]]; then
	export HAS_APTITUDE=1
fi

if [[ -x `which yum` ]]; then
	export HAS_YUM=1
fi
