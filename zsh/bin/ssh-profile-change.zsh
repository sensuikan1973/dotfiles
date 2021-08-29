echo "\033]1337;SetProfile=Remote\a"

/usr/bin/ssh "$@"

echo "\033]1337;SetProfile=Default\a"
