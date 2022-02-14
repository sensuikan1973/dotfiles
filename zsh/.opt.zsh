# See: https://zsh.sourceforge.io/Doc/Release/Options.html

# allow variable in PROMPT.
setopt prompt_subst

# display completion list packed.
setopt list_packed

# no beep.
setopt no_beep
setopt nolistbeep

# notify when background job has finished.
setopt no_tify

# ディレクトリスタックに同じディレクトリを追加しない
setopt pushd_ignore_dups

# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# auto_list の補完候補一覧で、ls -F のようにファイル種別をマーク表示する
setopt list_types

# 上書きリダイレクトを禁止
setopt no_clobber

# 余分な空白は詰める
setopt hist_reduce_blanks

# Ctrl+D では終了させない（exit や logout を使う）
setopt ignore_eof

# コマンドライン実行時にもコメントを使いたい
setopt interactivecomments

# 辞書順ではなく数字順に並べる。
setopt numeric_glob_sort

# 同ホストで他のターミナルと履歴を共有
setopt share_history

# 直前と同じコマンドラインはヒストリに追加しない
setopt hist_ignore_dups

# historyコマンドは履歴に残さない
setopt hist_no_store

# 複数の zsh を同時に使う時など history ファイルに上書きせず追加
setopt append_history

# for peco, save many history.
export HISTFILE=~/.zsh_history
export HISTSIZE=10000000
export SAVEHIST=$HISTSIZE
