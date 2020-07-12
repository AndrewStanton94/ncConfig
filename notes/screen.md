# Screen notes

## Starting screen

screen
screen -S SESSION_NAME

## List existing sessions

screen -ls

## Reconnect to screen

screen -r SESSION_NAME

### Reconnect to screen if screen is being uncooperative

screen -D -R

## Commands

<C-a>	Trigger

0..9	Move to screen
k		Kill screen
c		Create new screen
A		Name the screen
Q		Remove splits
S		Split
TAB		Move between windows
