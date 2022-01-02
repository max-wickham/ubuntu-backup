set fish_greeting
set -U fish_user_paths /home/max/bin $fish_user_paths
set PATH /home/max/scripts $PATH
function env
	python3 -m venv ./env
	echo "*" > ./env/.gitignore
end
function activate
	source ./env/bin/activate.fish
end
function pfreeze
	pip freeze > requirements.txt
end
function pinstall
	pip install -r requirements.txt
end
function remove_fish
	set END (tail -1 ~/.bashrc)         
	if  test $END = "fish"
		sed '$d' ~/.bashrc > ~/tmp/.bashrc
		cat ~/tmp/.bashrc > ~/.bashrc
		bash
	end
end
function start_insync
	export QT_QPA_PLATFORM=wayland
	insync start
end
