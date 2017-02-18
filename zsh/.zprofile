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

###########
# private

# git remote branch but comment out due to zshrc plugins
#grbc=`gem contents git_remote_branch | grep grb-completion.bash` && source $grbc

## alias
# vi / vim => MacVim
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias ll="ls -l"
alias lla="ls -la"
alias llat="ls -lat"
alias diff="colordiff"
alias ldd="otool -L "
alias be="bundle exec"
