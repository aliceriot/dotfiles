#not actually solely coreutils, but commands I want on every machine

#Commands and programs
alias la='ls -alh'			#show hidden files and attribute
alias ls='ls --color=auto'  #colorize ls output
alias grep='grep -n --color=auto' #colorize grep output and line numbers
alias mkdir='mkdir -p -v'   #makes a directory and it's hierarchy, also verbose
alias mv='mv -iv'           #makes it interactive and verbose
alias usb='sudo mount /dev/sdb1 /mnt/usb' 
alias howbig='du -hc | tail -n 1'
alias fullpath='ls -d -1 $PWD/*.*'

alias bc='bc -l'

#shutdown
alias shutdown='sudo shutdown -P now'

#tmux
alias new='tmux new -s'
alias sessions='tmux list-sessions'
alias attach='tmux attach -t'