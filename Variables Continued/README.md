# Variables Continued

## Built in variables
- `$BASH` - bash binaries.
- `$BASH_ VERSION` -  bash version.
- `$$` -  the process id of the script.
- `$PATH` -  paths to binaries.
- `$UID` - user id.
- `$EUID` - effective (current) user id.
- `$FUNCNAME`- function name.
- `$GROUPS` - an array of groups to which current user belongs.
- `$USER`- current user.
- `$HOME` - home directory of the current user.
- `$HOSTNAME` - host name.
- `$HOSTTYPE`, `$MACHTYPE` - main info about OS.
- `$IFS` - field separators.
- `$LINENO` - line number.
- `$PWD` - current directory.
- `$OLDPWD` - previous directory.
- `$OSTYPE` - os type.
- `$PIPESTATUS` - an array of pipe statuses.
- `$REPLY` - if there was no variable in `read` call, then the user's input goes to this variable.
- `$SECONDS` - script run-time in seconds. Can be used for automation, for tasks that execute on regular basis.

# Declaring a variable
Use `declare` when portability is not an issue. Otherwise use `typeset`.

Keys:
- `-r` - read only.
- `-i` - integer variable. Allows to do some ariphmetic operations without `let`.
- `-a` - array. 
- `-f` - function.
- `-x` - export. This variable can be exported outside the script.

## Little things
- `sleep time` - puts script to sleep for `time`.
- `$RANDOM` - returns a pseudorandom number between `0` and `32768`.