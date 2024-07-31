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
bind -n M-h    previous-window
bind -n M-l    next-window

bind -n M-1    select-window -t 1
bind -n M-2    select-window -t 2
bind -n M-3    select-window -t 3
bind -n M-4    select-window -t 4
bind -n M-5    select-window -t 5
bind -n M-6    select-window -t 6
bind -n M-7    select-window -t 7
bind -n M-8    select-window -t 8
bind -n M-9    select-window -t 9

bind -n C-M-H  resize-pane     -L
bind -n C-M-L  resize-pane     -R
bind -n C-M-K  resize-pane     -U
bind -n C-M-J  resize-pane     -D
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix h   previous-window
bind -T prefix l   next-window
bind -T prefix k   switch-client   -p
bind -T prefix j   switch-client   -n
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix M-1 select-layout even-horizontal \; resize-pane -x 120
bind -T prefix M-2 select-layout even-horizontal \; resize-pane -x 80
bind -T prefix M-3 select-layout even-horizontal
bind -T prefix =   select-layout even-horizontal
bind -T prefix b   choose-buffer -Z

bind -T prefix p popup

bind -T prefix c   command-prompt -I "#{TMUX_WIN_ICO}#{e|+:#{session_windows},1}" { new-window  -c "#{pane_current_path}" -n "%%" }
bind -T prefix C-c command-prompt -I "#{TMUX_SES_ICO}#{next_session_id}"          { new-session -c "#{pane_current_path}" -s "%%" -n "#{TMUX_WIN_ICO}" -A }
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix , command-prompt -I "#W" { rename-window "%%" }
bind -T prefix . command-prompt -I "#S" { rename-session "%%" }
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix v split-window  -h -c "#{pane_current_path}"
bind -T prefix s split-window  -v -c "#{pane_current_path}"
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  VI-Mode + Searches  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
bind   -T prefix       /   copy-mode
bind   -T prefix       C-_ command-prompt -p "?google:"           "run -b  'chromium  --new-window \"https://google.com/search?q=%%&btnl\"'"
bind   -T copy-mode-vi y   send-keys      -X copy-pipe-and-cancel "xclip     -in -selection clipboard"
bind   -T copy-mode-vi v   send-keys      -X begin-selection
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  Killings  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
bind -T prefix d   confirm-before 'kill-session'
bind -T prefix C-d confirm-before 'detach-client'
bind -T prefix C-k confirm-before 'kill-server'
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -n C-d  if-shell -b "[ $(tmux display-message \
  -p \"#{T:pane_current_command}\" | grep zsh | wc -l) -eq 1 \
  -a $(tmux list-windows | wc -l) -eq 1 \
  -a $(tmux list-panes | wc -l) -eq 1 ]" \
  { confirm-before 'detach' } { send 'C-d' }
#   ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
#   ▄▄▄  Menus  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#   ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
bind -T prefix > display-menu -T \
  "#[align=centre]#{pane_index} (#{pane_id})" -x P -y P \
  "H Split" h { split-window -h } \
  "V Split" v { split-window -v } '' \
  "#{?#{>:#{window_panes},1},,-}Next Layout" n { nextl } '' \
  "#{?#{>:#{window_panes},1},,-}Swap Up"     u { swap-pane -U } \
  "#{?#{>:#{window_panes},1},,-}Swap Down"   d { swap-pane -D } \
         "#{?pane_marked_set,,-}Swap Marked" s { swap-pane } '' \
  "Kill" X { kill-pane } \
  "Respawn" R { respawn-pane -k } \
  "#{?pane_marked,Unmark,Mark}" m  { select-pane -m } \
  "#{?#{>:#{window_panes},1},,-}#{?window_zoomed_flag,Unzoom,Zoom}"  z { resize-pane -Z }
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix   C-r display-menu -T \
  '#[align=centre]#{window_index}:#{window_name} #[fg=#{@WBG}]' \
  '#[fg=colour4] ⏻ #[fg=#{@SBG}] Source' \
  r { source-file "$TMUX_CONFIG_DIR/tmux.conf" };
#  ╶╶╶╶╶╶───────╴──────╴──────╴─────╴────╴───╴──╴─╴─╶
bind -T prefix M command-prompt -T target { move-window -t "%%" }
#   ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁
#   ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
# vim:ft=tmux
