# Repository conventions for agents

This repo holds dotfiles and shell scripts. A few things here are easy to break
by "helpfully" cleaning them up — read this before editing.

## Preserve literal control characters (`^M` / carriage return)

Some scripts intentionally embed a **literal carriage return** (`\r`, displayed
as `^M`, entered in the editor with `Ctrl-V Ctrl-M`). This is deliberate, **not**
a stray Windows line-ending or an artifact to normalize.

Rules:

- **Never strip, normalize, or convert** these characters when editing a file.
  Do not run `dos2unix`, `sed 's/\r//'`, `tr -d '\r'`, or any line-ending
  "cleanup" on files that contain them.
- When editing such a file, keep the `^M` byte exactly where it is. Only change
  the parts you were asked to change.
- They are **semantically required**: e.g. `tmux send-keys "... ^M"` relies on the
  `^M` to deliver an Enter keypress. Removing it silently breaks the script with
  no error.

Known uses:

- `env/.local/scripts/tmux-sessionizer` — `send-keys` call with a trailing `^M`.

To find every file that contains one:

```sh
grep -rlP '\r' . | grep -v '\.git/'
```
