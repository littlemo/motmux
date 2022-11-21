#!/bin/bash
# 👻 put this file into your $PATH, normally `~/.local/bin/toggle-tmux-popup`
# 👻 this script should have runable permission.

if [ "$(tmux display-message -p -F "#{session_name}")" = "popup" ];then
  tmux detach-client
else
  tmux popup -d '#{pane_current_path}' -xC -y0 -w100% -h60% -E "tmux attach -t popup || tmux new -s popup"
fi
