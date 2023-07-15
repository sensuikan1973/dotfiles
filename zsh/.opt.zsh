# See: https://zsh.sourceforge.io/Doc/Release/Options.html

# not load /etc/z*
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

# ignore duplicated command on history.
setopt hist_ignore_dups
setopt hist_ignore_all_dups

# ignore history command on history.
setopt hist_no_store

# append history. not renew .zsh_history.
setopt append_history

# record timestamp
setopt extended_history

# append history immediately
setopt inc_append_history

# for peco, save many history.
export HISTFILE=~/.zsh_history
export HISTSIZE=10000000
export SAVEHIST=$HISTSIZE

# regard "#" as comment on command line
setopt interactive_comments

# See: https://haya.se/diary/?date=200808
setopt no_multios

# At logout, do not kill/check background job
setopt no_hup
setopt no_checkjobs

# wait 10 sec to ask y/N before rm execution
setopt rm_star_wait

# when exit code != 0, print the code
setopt print_exit_value

export DIRSTACKSIZE=100
setopt AUTO_PUSHD

## ===== I don't like opts =====

# auto completion by Tab repeat.
unsetopt auto_menu

# share history with other terminal on the same host.
unsetopt share_history
