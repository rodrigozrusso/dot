
#Definicoes
[[ -s "/Users/rrusso/.bash_scripts/.bashrc_def" ]] && source "/Users/rrusso/.bash_scripts/.bashrc_def"
[[ -s "/Users/rrusso/.bash_scripts/.bashrc_alias" ]] && source "/Users/rrusso/.bash_scripts/.bashrc_alias"

# configure my multi-line prompt
#PS1='$PWD \> '
PS1="${HILIT}[\h]$NC \w > \[\033]0;\${TERM} [\u@\h] \w\007\]" ;

#-----#
# X11 #
#-----#
#export DISPLAY=:0.0
#PATH=${PATH}:/usr/local/bin:/usr/local/mysql-5.5.11-osx10.6-x86/bin/
export PATH=${PATH}:/usr/local/mysql/bin/:/usr/local/sbin:/Library/PostgreSQL/9.1/bin:/Users/rrusso/dev/tools/jruby-1.6.5/bin;


################### FUNCOES #########################
function maven2() {
   
   PATH=~/dev/tools/apache-maven-2.2.1/bin/:${PATH}

}

function mysql.server.start() {
#   cd /usr/local/mysql
#   sudo ./bin/mysqld_safe;
#   cd ${OLDPWD};
   # /Library/StartupItems/MySQLCOM/MySQLCOM start;
	cd /usr/local/Cellar/mysql/5.5.15 ;
	/usr/local/Cellar/mysql/5.5.15/bin/mysqld_safe &
}

function mysql.server.stop() {
   /Library/StartupItems/MySQLCOM/MySQLCOM stop;
}



#Includes externos
[[ -s "/Users/rrusso/.rvm/scripts/rvm" ]] && source "/Users/rrusso/.rvm/scripts/rvm"
