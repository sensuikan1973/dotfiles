# See: https://zsh.sourceforge.io/Doc/Release/Options.html

# nod load /etc/z*
setopt no_global_rcs

# allow variable in PROMPT.
setopt prompt_subst

# display completion list packed.
setopt list_packed

# no beep.
setopt no_beep
setopt nolistbeep

# notify when background job has finished.
setopt no_tify

# directory stuck ignore duplicated directory.
setopt pushd_ignore_dups

# display completion lsit.
setopt auto_list

# display file type on completion.
setopt list_types

# forbidden overwriting.
setopt no_clobber

# pack redudant blanks.
setopt hist_reduce_blanks

# forbidden logout by `Ctrl + D`.
setopt ignore_eof

# allow to comment on interactive shell.
setopt interactivecomments

# not alphabetical but numeric sort.
setopt numeric_glob_sort

# share history with other terminal on the same host.
setopt share_history

# ignore duplicated command on history.
setopt hist_ignore_dups

# ignore history command on history.
setopt hist_no_store

# append history. not renew .zsh_history.
setopt append_history

# record timestamp
setopt extended_history

# for peco, save many history.
export HISTFILE=~/.zsh_history
export HISTSIZE=10000000
export SAVEHIST=$HISTSIZE

# regard "#" as comment on command line
setopt interactive_comments

# See: https://haya.se/diary/?date=200808
setopt no_multios
