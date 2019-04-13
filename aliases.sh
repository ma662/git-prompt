# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

# custom paths
alias proj='cd ~/Desktop/Coding/Projects'
alias hw='cd ~/Desktop/Coding/RUTJER201811FSF2/homework-assignments'
alias class='cd ~/Desktop/Coding/RUTJER201811FSF2/class-content'
alias rut='cd ~/Desktop/Coding/RUTJER201811FSF2'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
