export HISTCONTROL=ignoredups
export EDITOR='vim'

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="[\u] \[\033[36m\]\w\[\033[0m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \n $ "

. ~/.bash_aliases
. ~/.paths

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi
