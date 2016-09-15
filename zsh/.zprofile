# 補完機能
#autoload -U compinit
#compinit

# prompt
#PROMPT='%m:%c %n$ '

# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# コマンド履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end








######## mine

#plugins=(brew brew-cask cdd gem git rbenv vagrant git-remote-branch)




## PATH
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




## alias
# vi / vim => MacVim
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias ll="ls -l"
alias lla="ls -la"
alias llat="ls -lat"
alias diff="colordiff"
alias ldd="otool -L "



## INIT
# docker use default machine
#eval $(docker-machine env default)


export DEFAULT_USER=`whoami`
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
