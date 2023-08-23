#! /bin/sh
IFS='\n'
sessions=$(tmux list-sessions | wc -l | sed -e 's/ //g')
if [ $? -eq 0 ]
then
    echo numsessions: $sessions
    if [ $sessions -eq 1 ]
    then 
	echo $sessions
	echo attach
	exec tmux attach
    elif [ $sessions -eq 0 ]
    then
	echo there are no sessions. start a new session.
	exec tmux
    else
	echo there are $sessions sessions found.
	echo which session do you want to attach ?
	tmux list-sessions
	read select
	exec tmux attach-session -t $select
    fi
fi
