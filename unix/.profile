function pc_git {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/' 
}
export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\]:\[\e[34m\]\w\[\e[m\]\[\e[31m\]\`pc_git\`\[\e[m\]\\$ "
export PATH=$PATH:/bb/bigstorq3/derv_xasset/tools/xbuild_v5/bin/
export PATH=$PATH:/opt/swt/install/apache-maven-3.1.1/bin

alias out="git checkout"
alias w="cd ~/workspace"
alias q="exit"
alias ~="cd ~"
alias ..="cd .."
alias c="clear"
alias snap="cd ~/.snapshot"
alias vi="vim"
alias v="vim"

function cd {
    builtin cd "$@" && ls -F
        }

# ~/.profile skeleton
# ~/.profile runs on interactive login shells if it exists
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo "~/.profile has run"

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# commandline editing
set -o emacs    # emacs style command line mode (default)
#set -o vi      # vi style command line mode

