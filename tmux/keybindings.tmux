set -g prefix C-s
#▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  Unbinds  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
unbind -n F8
unbind -n F1
unbind -n F2
unbind -n F3
unbind -n F4
unbind -n F5
unbind -n F6
unbind -n F7
unbind -n F8
unbind -T copy-mode-vi [
unbind -T prefix /
unbind -T prefix c
unbind -T prefix .
unbind C-b
unbind C-a
unbind C-s
#   ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
bind C-s send-prefix
bind C-l send-keys 'C-l'
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  Navigations  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
bind -n M-h previous-window
bind -n M-l next-window

bind -n M-1 select-window -t 1
bind -n M-2 select-window -t 2
bind -n M-3 select-window -t 3
bind -n M-4 select-window -t 4
bind -n M-5 select-window -t 5
bind -n M-6 select-window -t 6
bind -n M-7 select-window -t 7
bind -n M-8 select-window -t 8
bind -n M-9 select-window -t 9

bind -n C-M-H resize-pane -L
bind -n C-M-L resize-pane -R
bind -n C-M-K resize-pane -U
bind -n C-M-J resize-pane -D

#################################################
# NAVIGATION ####################################

# is_vim="ps -o state= -o comm= -t '#{pane_tty}' | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?\.?(view|n?vim?x?)(-wrapped)?(diff)?$'"
# bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h' { if -F '#{pane_at_left}' '' 'select-pane -L' }
# bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j' { if -F '#{pane_at_bottom}' '' 'select-pane -D' }
# bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k' { if -F '#{pane_at_top}' '' 'select-pane -U' }
# bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l' { if -F '#{pane_at_right}' '' 'select-pane -R' }
#
# bind-key -n 'C-n' if-shell "$is_vim" 'send-keys C-n' { if -F '#{window_end_flag}' '' 'select-window -n' }
# bind-key -n 'C-p' if-shell "$is_vim" 'send-keys C-p' { if 'test #{window_index} -gt #{base-index}' 'select-window -p' }

is_tui="ps -o comm= -t '#{pane_tty}' | grep -iqE '^(n?vim|view|fzf|sk)$'"
bind-key -n C-h if-shell "$is_tui" 'send-keys C-h' 'select-pane -L'
bind-key -n C-j if-shell "$is_tui" 'send-keys C-j' 'select-pane -D'
bind-key -n C-k if-shell "$is_tui" 'send-keys C-k' 'select-pane -U'
bind-key -n C-l if-shell "$is_tui" 'send-keys C-l' 'select-pane -R'

# bind-key -n C-n if-shell "$is_tui" 'send-keys C-n' 'select-window -n'
# bind-key -n C-p if-shell "$is_tui" 'send-keys C-p' 'select-window -p'
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind-key -T copy-mode-vi 'C-h' if -F '#{pane_at_left}' '' 'select-pane -L'
bind-key -T copy-mode-vi 'C-j' if -F '#{pane_at_bottom}' '' 'select-pane -D'
bind-key -T copy-mode-vi 'C-k' if -F '#{pane_at_top}' '' 'select-pane -U'
bind-key -T copy-mode-vi 'C-l' if -F '#{pane_at_right}' '' 'select-pane -R'
bind-key -T copy-mode-vi 'C-n' if -F '#{window_end_flag}' '' 'select-window -n'
bind-key -T copy-mode-vi 'C-p' if 'test #{window_index} -gt #{base-index}' 'select-window -p'

#################################################
# RESIZE ########################################
is_vim="ps -o state= -o comm= -t '#{pane_tty}' | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"

bind -n 'C-M-H' if-shell "$is_vim" 'send-keys C-M-H' 'resize-pane -L 1'
bind -n 'C-M-J' if-shell "$is_vim" 'send-keys C-M-J' 'resize-pane -D 1'
bind -n 'C-M-K' if-shell "$is_vim" 'send-keys C-M-K' 'resize-pane -U 1'
bind -n 'C-M-L' if-shell "$is_vim" 'send-keys C-M-L' 'resize-pane -R 1'

bind-key -T copy-mode-vi C-M-H resize-pane -L 1
bind-key -T copy-mode-vi C-M-J resize-pane -D 1
bind-key -T copy-mode-vi C-M-K resize-pane -U 1
bind-key -T copy-mode-vi C-M-L resize-pane -R 1

#################################################
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix h previous-window
bind -T prefix l next-window
bind -T prefix k switch-client -p
bind -T prefix j switch-client -n
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T copy-mode-vi u send -X cursor-up
bind -T copy-mode-vi U send -N 5 -X cursor-up
bind -T copy-mode-vi e send -X cursor-down
bind -T copy-mode-vi E send -N 5 -X cursor-down
bind -T copy-mode-vi n send -X cursor-left
bind -T copy-mode-vi N send -X start-of-line
bind -T copy-mode-vi i send -X cursor-right
bind -T copy-mode-vi I send -X end-of-line
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix M-1 select-layout even-horizontal \; resize-pane -x 120
bind -T prefix M-2 select-layout even-horizontal \; resize-pane -x 80
bind -T prefix M-3 select-layout even-horizontal
bind -T prefix = select-layout even-horizontal
bind -T prefix b choose-buffer -Z

bind -T prefix p popup

bind -T prefix c command-prompt -I "#{TMUX_WIN_ICO}#{e|+:#{session_windows},1}" { new-window -c "#{pane_current_path}" -n "%%" }
bind -T prefix C-c command-prompt -I "#{TMUX_SES_ICO}#{next_session_id}" { new-session -c "#{pane_current_path}" -s "%%" -n "#{TMUX_WIN_ICO}" -A }
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix , command-prompt -I "#W" { rename-window "%%" }
bind -T prefix . command-prompt -I "#S" { rename-session "%%" }
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix v split-window -h -c "#{pane_current_path}"
bind -T prefix s split-window -v -c "#{pane_current_path}"
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  VI-Mode + Searches  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
bind -T prefix / copy-mode
bind -T prefix C-_ command-prompt -p "?google:" "run -b  'chromium  --new-window \"https://google.com/search?q=%%&btnl\"'"
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "xclip     -in -selection clipboard"
bind -T copy-mode-vi v send-keys -X begin-selection
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  Killings  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
bind -T prefix d confirm-before 'kill-session'
bind -T prefix C-d confirm-before 'detach-client'
bind -T prefix C-k confirm-before 'kill-server'
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -n C-d if-shell -b "[ $(tmux display-message \
  -p \"#{T:pane_current_command}\" | grep zsh | wc -l) -eq 1 \
  -a $(tmux list-windows | wc -l) -eq 1 \
  -a $(tmux list-panes | wc -l) -eq 1 ]" \
  { confirm-before 'detach' } { send 'C-d' }
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  Menus  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
# bind -T prefix -T \
#   "#[align=centre]#{pane_index} (#{pane_id})" -x P -y P \
#   "H Split" h { split-window -h } \
#   "V Split" v { split-window -v } '' \
#   "#{?#{>:#{window_panes},1},,-}Next Layout" n { nextl } '' \
#   "#{?#{>:#{window_panes},1},,-}Swap Up" u { swap-pane -U } \
#   "#{?#{>:#{window_panes},1},,-}Swap Down" d { swap-pane -D } \
#   "#{?pane_marked_set,,-}Swap Marked" s { swap-pane } '' \
#   "Kill" X { kill-pane } \
#   "Respawn" R { respawn-pane -k } \
#   "#{?pane_marked,Unmark,Mark}" m { select-pane -m } \
#   "#{?#{>:#{window_panes},1},,-}#{?window_zoomed_flag,Unzoom,Zoom}" z { resize-pane -Z } >display-menu
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix C-r display-menu -T \
  '#[align=centre]#{window_index}:#{window_name} #[fg=#{@WBG}]' \
  '#[fg=colour4] ⏻ #[fg=#{@SBG}] Source' \
  r { source-file "$TMUX_CONFIG_DIR/tmux.conf" }
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix M command-prompt -T target { move-window -t "%%" }
#   ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
# vim:ft=tmux
