# Path to your oh-my-zsh installation.
export ZSH=/Users/tomo/.oh-my-zsh
 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# oh-my-zshで利用できるテーマを指定
#ZSH_THEME="simple"
#ZSH_THEME="agnoster"
#ZSH_THEME="powerline"
#ZSH_THEME="solarized-powerline"

# solarized-powerline theme
#ZSH_POWERLINE_SINGLE_LINE="true"
#ZSH_POWERLINE_SHOW_OS="false"


# oh my zshで利用できるプラグインを指定
#plugins=(brew brew-cask cdd gem git rbenv vagrant git-remote-branch zsh-syntax-highlighting)
plugins=(brew brew-cask cdd gem git rbenv vagrant git-remote-branch zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
 
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
 
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
 
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
 
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
 
# 文字コードの指定
# export LANG=ja_JP.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# cdなしでディレクトリ移動
setopt auto_cd
 
# ビープ音の停止
setopt no_beep
 
# ビープ音の停止(補完時)
setopt nolistbeep
 
# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd
 
# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
 
# 同時に起動したzshの間でヒストリを共有する
setopt share_history
 
# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups
 
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
 
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
 
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
 
# キーバインディングをemacs風に(-vはvim)
bindkey -e
# bindkey -v
 
# zsh-completionsの設定
fpath=(/path/to/homebrew/share/zsh-completions $fpath)
 
autoload -U compinit
compinit -u


# powerline
powerline-daemon -q
. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#POWERLINE_HIDE_HOST_NAME="true"
#POWERLINE_HIDE_GIT_PROMPT_STATUS="true"
#POWERLINE_SHOW_GIT_ON_RIGHT="true"


# 補完関係その他
#補完のときプロンプトの位置を変えない
setopt always_last_prompt
#補完候補が複数あるとき自動でメニューをリストアップ
setopt auto_list
#補完要求に対してメニューをリストアップ
setopt auto_menu
#補完候補を詰めて表示する
setopt list_packed
#補完の表示を水平方向に
setopt list_rows_first
#補完候補の表示を親切に ls -F
# /がディレクトリ
# @がシンボリックリンク
setopt list_types
# tabキーの節約
setopt menu_complete
#エイリアスに対して別の補完定義を telnet tt
#setopt complete_aliases
setopt no_complete_aliases
#ディレクトリ 補完 /を付与
setopt auto_param_slash
#スペースで /を削除
setopt auto_remove_slash


