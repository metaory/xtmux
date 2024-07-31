set -g default-terminal "tmux-256color"
set -ag terminal-overrides ",xterm-256color:RGB"

set -gw automatic-rename off
# set -gw automatic-rename-format "#{pane_current_command}"
# set -gw automatic-rename-format "#{?pane_in_mode,[tmux],#{pane_current_command}}#{?pane_dead,[dead],}"

set -gw xterm-keys on
set -gw pane-base-index 1
set -gw pane-border-status off
set -gw mode-keys vi
set -gw pane-border-indicators both
set -s  escape-time 0
set -g  mouse off
set -g  base-index 1
set -g  display-panes-time 2000
set -g  display-time 3000
set -g  history-limit 10000
set -g  clock-mode-style 24
set -g  set-titles on
set -g  set-titles-string "#{pane_current_command} #{=-10:pane_current_path}"
set -g  renumber-windows on
set -g  automatic-rename on
set -g  allow-rename on
set -g  remain-on-exit off
set -g  detach-on-destroy off
set -g  focus-events on

# vim:ft=tmux
