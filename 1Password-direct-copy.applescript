tell application "System Events"
	set frontmostApplicationName to name of 1st process whose frontmost is true
	open location "onepassword://extension/search/{query}"
	set frontmost of process "1Password 7" to true
	delay 0.5

	# -- reset possible same previous search --
	key code 8 using command down #copy
	delay 0.2
	key code 51 #delete
	delay 0.2
	key code 9 using command down #paste
	delay 0.2
	# -----------------------------------------

	key code 48 #tab
	delay 0.2
	key code 125 #down arrow
	delay 0.2
	key code 36 #enter
	delay 0.2

	set frontmost of process frontmostApplicationName to true
	key code 9 using command down #paste
end tell
