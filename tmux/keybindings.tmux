unbind C-b
unbind C-a
unbind C-s
set      -g prefix      C-s
bind C-s send-prefix

## ########################################################################### #
bind-key -T prefix  t   clock-mode
bind-key -T prefix C-u set -g status off
## ########################################################################### #
bind-key -T prefix   C-r display-menu -T "#[align=centre]#{window_index}:#{window_name} #[fg=#{@WBG}]#{@WIC} " -x C -y P \
"" \
"-#[align=centre]#[fg=#{@WBG},nodim,bold]╸mxc╺" "" "" \
"#[fg=colour2] ﳟ #[fg=#{@WBG}] Demo     " "d" "send-keys 'env -i mxcolr -d' Enter" \
"#[fg=colour4]  #[fg=#{@WBG}] List     " "l" "send-keys 'env -i mxcolr -l' Enter" \
"#[fg=colour1]  #[fg=#{@WBG}] eXP·v2   " "U" "run-shell 'env -i mxcolr -x2'" \
"#[fg=colour3] ﯓ #[fg=#{@WBG}] Update   " "u" "run-shell 'env -i mxcolr -u'" \
"#[fg=colour3] ﰨ #[fg=#{@WBG}] Generate " "g" "run-shell 'env -i mxcolr -g'" \
"#[fg=colour2] ﴖ #[fg=#{@WBG}] Snap     " "S" "run-shell 'env -i mxcolr -s' \; display-message '  snapshot saved.'" \
"" \
"-#[align=centre]#[fg=#{@EBG},nodim,bold]╸mico╺" "" "" \
"#[fg=colour2]  #[fg=#{@EBG}] Save mico" "s" "if-shell -b '(grep #{@WIC} ~/dev/meta/municode/dumps/uni-mico)' {
  display-message '#[bg=colour0,fg=colour1,fill=colour0,bold] #{@WIC} exists '
} {
  run-shell 'echo -n \" #{@WIC}\" >> ~/dev/meta/municode/dumps/uni-mico'
  display-message -d 500 '  added #{@WIC} to uni-mico'
}" \
"" \
"#[fg=colour5] ﰛ #[fg=#{@SBG}] Source   " "e" "source-file $M_THEME"
## ########################################################################### #
bind-key -n M-h         previous-window
bind-key -n M-l         next-window

bind-key -n M-1         select-window -t 1
bind-key -n M-2         select-window -t 2
bind-key -n M-3         select-window -t 3
bind-key -n M-4         select-window -t 4
bind-key -n M-5         select-window -t 5
bind-key -n M-6         select-window -t 6
bind-key -n M-7         select-window -t 7
bind-key -n M-8         select-window -t 8
bind-key -n M-9         select-window -t 9

bind-key -T prefix h         previous-window
bind-key -T prefix l         next-window
bind-key -T prefix k         switch-client   -p
bind-key -T prefix j         switch-client   -n

bind-key -n  C-M-H resize-pane     -L
bind-key -n  C-M-L resize-pane     -R
bind-key -n  C-M-K resize-pane     -U
bind-key -n  C-M-J resize-pane     -D

bind-key -T prefix M-1 select-layout even-horizontal \; resize-pane -x 120
bind-key -T prefix M-2 select-layout even-horizontal
bind-key -T prefix =   select-layout even-horizontal
bind-key -T prefix b   choose-buffer -Z

## ########################################################################### #
## Windows
bind-key -T prefix s split-window  -h -c "#{pane_current_path}"
bind-key -T prefix v split-window  -v -c "#{pane_current_path}"

## ########################################################################### #
## VI-Mode + Searches 
unbind-key -T prefix       /
bind-key   -T prefix       /   copy-mode
bind-key   -T prefix       C-_ command-prompt -p "?google:"           "run -b  'chromium  --new-window \"https://www.google.com/search?q=%%&btnl\"'"
bind-key   -T copy-mode-vi y   send-keys      -X copy-pipe-and-cancel "xclip     -in -selection clipboard"
unbind-key -T copy-mode-vi [
bind-key   -T copy-mode-vi v   send-keys      -X begin-selection

############################################## >>>

## ########################################################################### #
## Killings
bind-key -T prefix d   confirm-before 'kill-session'
bind-key -T prefix C-d confirm-before 'detach-client'
bind-key -T prefix C-k confirm-before 'kill-server'

bind -n C-d  if-shell -b "[ $(tmux display-message -p \"#{T:pane_current_command}\" | grep zsh | wc -l) -eq 1 -a $(tmux list-windows | wc -l) -eq 1 -a $(tmux list-panes | wc -l) -eq 1 ]" {
  # display "A ? #{window_panes} #{session_windows} #{pane_current_command} -- #{T:pane_current_command}"
  # rename-session "AA #{pane_current_command} - #{T:pane_current_command}"
  confirm-before 'detach'
} {
  # display "B ? #{window_panes} #{session_windows} #{pane_current_command} -- #{T:pane_current_command}"
  # rename-session "BB #{pane_current_command} - #{T:pane_current_command}"
  send 'C-d'
}

## ########################################################################### #
## Unbinds 
  unbind-key -n F8
  unbind-key -n F1
  unbind-key -n F2
  unbind-key -n F3
  unbind-key -n F4
  unbind-key -n F5
  unbind-key -n F6
  unbind-key -n F7
  unbind-key -n F8
## ########################################################################### #
## SESSIONS

bind C-c send-keys 'C-l'

bind-key -T prefix c \
  new-window  -c "#{?#{pane_current_path},#{pane_current_path},~/void}" -n "" \; \
  command-prompt -I  "#W" "rename-window  -- '%%'" \; \
  source-file ~/.config/tmux/meta.min.tmuxtheme

