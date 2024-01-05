echo Installing kitty configuration

mkdir ~/.config/kitty

for file in ./config/kitty/*
	do
		echo $file

		# wtf
		if grep -q "kitty cat" "$file"
			then
				continue
			fi

		ln $file ~/.config/kitty/
	done
