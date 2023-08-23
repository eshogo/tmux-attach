# tmux-attach

## What is this.
This script prevents from invoking multiple tmux instances.

## Description
When tmux-attach is invoked, this script tries to find existing tmux sessions.
If no sessions are found, script invoke new tmux session.
If existing sessions are found, this script attaches to them.
In case there is one session, script will try to attach this session.
In case there are multiple sessions, script will prompt to ask which session to be attached.
