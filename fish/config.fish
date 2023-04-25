set -x PATH $PATH ~/.cargo/bin
set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin # OLD
set -x PATH $PATH /usr/local/bin
set -x PATH $PATH /usr/local/zig

if [ -f $HOME/.config/fish/private.fish ]
	source $HOME/.config/fish/private.fish
end

function fish_greeting
end

export EDITOR="nvim"

alias work="cd ~/repos/yams"
alias personal="cd ~/repos/personal"
alias vs="open -a 'Visual Studio Code'"
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ls="exa -la"

function cht
	command http cht.sh/$argv
end

function dockerrm
	docker stop $argv && docker rm $argv
end
