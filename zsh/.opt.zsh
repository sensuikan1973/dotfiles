# PROMPT 変数内の変数展開を許す
setopt prompt_subst

# コマンドラインのスペルチェック
setopt correct
# setopt correct_all

# 補完候補を詰めて表示
setopt list_packed

# ビープ音なし
setopt nobeep
setopt nolistbeep

# 同ホストで他のターミナルと履歴を共有
setopt share_history

# historyコマンドは履歴に残さない
setopt hist_no_store

# バックグラウンドジョブが終了したらすぐに知らせる
setopt no_tify

# ディレクトリスタックに同じディレクトリを追加しない
setopt pushd_ignore_dups

# 補完候補が複数ある時に、一覧表示する
setopt auto_list
setopt list_types # auto_list の補完候補一覧で、ls -F のようにファイル種別をマーク表示する

# 上書きリダイレクトを禁止
setopt no_clobber

# 余分な空白は詰める
setopt hist_reduce_blanks

# Ctrl+D では終了させない（exit や logout を使う）
setopt ignore_eof

# コマンドライン実行時にもコメントを使いたい
setopt interactivecomments
