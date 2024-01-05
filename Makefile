install:
	bash ./install.sh &> ./install.log
	grep "Fail" ./install.log
