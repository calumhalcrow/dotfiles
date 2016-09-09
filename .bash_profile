
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="/usr/local/bin:$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias wsclean="rake db:drop && rake db:create && sleep 5 && rake local:user"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/calum/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export NVM_DIR="/Users/calum/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_11_2
export ORACLE_HOME=/opt/oracle/instantclient_11_2
export NLS_LANG=$LANG

if [ -d $HOME/Demandforce/FS/bin ]; then
    export FS=$HOME/Demandforce/FS
elif [ -d $HOME/current/bin ]; then
    export FS=$HOME/current
fi
export PATH=$PATH:$FS/bin
#alias ls='ls --color=tty --classify'
#export PS1='\h:\w\$ '

export PGHOST=localhost
