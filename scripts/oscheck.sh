OS="`uname`"
uname -a
case $OS in
  'Linux')
    OS='Linux'
    alias ls='ls --color=auto'
    echo "The only correct choice"
	;;
  'FreeBSD')
    OS='FreeBSD'
    alias ls='ls -G'
	echo "Kinky"
    ;;
  'WindowsNT')
    OS='Windows'
	"Acceptable but could be better"
    ;;
  'Darwin') 
    OS='Mac'
	echo "You are an artist or trying to look cool"
	sleep 1.5
	echo "you aren't either"
    ;;
	*) 
		echo "What the hell are you smoking?"
		sleep 1.5
		echo "Can I have some...?"
		;;
esac
