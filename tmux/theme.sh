tm_base_color=colour242
tm_bg_color=colour237
tm_active_color=colour12
tm_active_pane=colour3
tm_music="#[fg=colour13]#(osascript ~/.dotfiles/music.scpt)"

# status bar position
set -g status-position bottom

# default statusbar colors
set -g status-fg white
set -g status-bg $tm_bg_color
set -g status-attr dim

# default window title colors
setw -g window-status-fg $tm_base_color
setw -g window-status-bg $tm_bg_color
setw -g window-status-attr dim
set -g window-status-format "#I:#W"
# set -g status-justify centre

# active window title colors
setw -g window-status-current-fg $tm_active_color
setw -g window-status-current-bg $tm_bg_color
setw -g window-status-current-attr dim
set -g window-status-current-format "#I:#W"

# changing pane dividers colors
set -g pane-border-fg white
set -g pane-border-bg default
set -g pane-active-border-fg $tm_active_pane
set -g pane-active-border-bg default

# changing the command line
set -g message-fg white
set -g message-bg black
set -g message-attr bright

# configuring status bar items
set -g status-left-length 40
set -g status-right-length 100
set -g status-left "❯ #S | "
set -g status-right "$tm_music #[fg=default]| %d %b | %R"
