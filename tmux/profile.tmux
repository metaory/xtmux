set-environment -g TERM "tmux-256color"
set-environment -g M_SNAPSHOT_PATH ~/.tmp/mtx/snapshot.tmux
set -s escape-time 0
setw -g xterm-keys on
set -g  mouse on
set -g  base-index 1
set -gw pane-base-index 1
set -g  display-panes-time 2000
set -g  display-time 3000

set -gw pane-border-status off
set -g  history-limit 10000
set -gw mode-keys vi
set -g  clock-mode-style 24
set -g set-titles on
set -g set-titles-string "#{pane_current_command} #{=-10:pane_current_path}|#{@WIC}"
set -g renumber-windows on
set -g automatic-rename off
set -g allow-rename off
set -g remain-on-exit off
set -g detach-on-destroy off

set -g focus-events on

set -g  default-command $SHELL
set -g  default-terminal "tmux-256color"
set -g  terminal-overrides 'xterm*:smcup@:rmcup@'
set -ga terminal-overrides ",xterm-*:Tc"
set -ga terminal-overrides ',*:Ss=\E[%p1%d q:Se=\E[2 q'
set -ga terminal-overrides ',*:Smol=\E[53m'

set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0

######

# source-file $XDG_CONFIG_HOME/tmux/tmux.mx
# source-file $XDG_CONFIG_HOME/tmux/meta.min.tmuxtheme

