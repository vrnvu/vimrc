# Set addtional paths
set -x PATH $PATH /home/vrnvu/.cargo/bin
set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin # OLD


# no greeting on start
function fish_greeting
end

# alias
alias repos="cd ~/Documents/repos"
alias down="cd ~/Downloads"
alias dev="tmux new-session \;  new-window -n 'nvim'"

alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

export EDITOR="nvim"
