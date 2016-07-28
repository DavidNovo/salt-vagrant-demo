# this is used to apply states to salt minions
# salt '*' state.apply
#calling state.apply with no arguments starts a highstate.
base:
  '*':
    - common
  'minion1':
    - nettools

