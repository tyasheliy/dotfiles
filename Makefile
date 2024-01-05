install:
	bash ./install.sh &> ./install.log
	grep "Fail" ./install.log

kitty:
	curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
