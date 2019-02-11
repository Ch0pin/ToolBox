# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave

info='| Bash v'$BASH_VERSION' |'
infolength=${#info}
for i in `seq $infolength`; do echo -n "-"; done
echo
echo $info
for i in `seq $infolength`; do echo -n "-"; done
echo

# Formatting the date
day="$(date +'%A %e')"
month="$(date +'%B %Y')"
case "${day: -1}" in
	"1")
		if [ "${day: -2}" == "11" ]; then
			extra="th "
   		else
			extra="st "
    		fi
    		;;
	"2")
		if [ "${day: -2}" == "12" ]; then
			extra="th "
  	  	else
			extra="nd "
    		fi
    		;;
	"3")
		if [ "${day: -2}" == "13" ]; then
			extra="th "
    		else
			extra="rd "
    		fi
    		;;
	*)
		extra="th "
		;;
esac
echo $day$extra$month

# Welcome message
echo Welcome $USER!

alias ls='ls -alG'
PS1="\[\033[01;31m\]\A \[\033[0;32m\] \u@\h \[\033[01;34m\][\w]\[\033[0;32m\]-> "
