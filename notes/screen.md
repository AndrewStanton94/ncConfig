# Screen notes

## Starting screen

`screen`
`screen -S SESSION_NAME`

## List existing sessions

`screen -ls`

## Reconnect to screen

`screen -r SESSION_NAME`

### Reconnect to screen if screen is being uncooperative

`screen -D -R`

## Commands in screen

`<C-a>`	Trigger plus one of the commands below

### Screen management

- `c`		Create new screen
- `0..9`	Move to screen
- `A`		Name the screen
- `k`		Kill screen

### Splits

Don't think of a split as belonging to an existing screen. This isn't a hieracrchy, just a way of seeing 2 screens at once.

- `S`		Split the screen
- `TAB`	Move between the splits.
    _In the gap, create a new screen or select an existing one_
- `Q`		Remove splits

## Making safe

By default the `x` key is bound to a screen log function. This doesn't accept my password so I have to close the SSH session and reconnect. This can be prevented with:

```
bind x
```

This maps the `x` to nothing.
