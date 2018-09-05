# Set git autocompletion and PS1 integration
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

PS1='\[\033[39m\]\u@\h\[\033[00m\]:\[\033[39m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export CATALINA_PID=/tmp/tomcat.pid
