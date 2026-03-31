#!/bin/bash

# SSH into the server
ssh your-username@your-pi-ip-address << EOF

# Start tmux session
tmux new-session -d -s plane_session

# Navigate to the directory and run the script
tmux send-keys -t plane_session 'cd ~/Documents/plane/its-a-plane-python' C-m
tmux send-keys -t plane_session 'sudo python3 its-a-plane.py' C-m
# Detach the tmux session
tmux detach -s plane_session

# Exit the server
exit
EOF
