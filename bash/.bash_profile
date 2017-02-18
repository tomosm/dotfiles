# load .bashrc
test -r ~/.bashrc && . ~/.bashrc

export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
#export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"

if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    # tmux対応
    for D in `\ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done
fi

# sublime
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl";
#export EDITOR='subl -w'

# intellij
export IDEA_HOME="/Applications/IntelliJ\ IDEA.app/Contents/MacOS"
export PATH="$PATH:$IDEA_HOME"

# git remote branch but comment out due to zshrc plugins
#grbc=`gem contents git_remote_branch | grep grb-completion.bash` && source $grbc

# git diff
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# php 5.6
#export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi