#!/usr/bin/python

import i3ipc

i3 = i3ipc.Connection()

current_workspace = i3.get_tree().find_focused().workspace().name
new_workspace = int(current_workspace) + 1

i3.command('workspace ' + str(new_workspace))


