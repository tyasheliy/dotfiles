echo "Installing dotfiles";

for dir in ./bin/*/;
	do
		bash $dir/setup.sh || echo Fail at: $dir
	done

for dir in ./config/*/;
	do
		bash $dir/setup.sh || echo Fail at: $dir
	done

echo "End";
