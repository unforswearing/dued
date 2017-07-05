# This script is for standalone use. If you would like to use the script as an Alfred Workflow, uncomment the following:
# set dued to q
# and be sure to:
#	  - comment out the "set dued to text tell current application to display notification ed..." line below this text
#   - replace all "tell current application to display notification" commands with "tell current application to display notification "

set dued to text returned of (display dialog "How many days and hours from now?" default answer "" buttons {"OK"} default button "OK")

if dued is "help" then
	tell application "Finder"
		open location "https://github.com/unforswearing/dued/blob/master/help.md"
		tell current application to display notification "opening help page..."
		error number -128
	end tell
end if

if dued is "" then error number -128

set dued to words of dued

set dayss to item 1 of dued

if dayss is "h" then
	set hourss to item 2 of dued
	set morrow to current date
	set morrow to morrow + hourss * hours
	set morrow to morrow as text
	set dtoday to (do shell script "echo " & morrow & " | sed s/.*,// | sed s/20..// | sed s/:[^..][0-9]//g | sed s/.' '//")
	set dtoday to "Today at " & dtoday
	set the clipboard to dtoday
	tell current application to display notification "Today's due time has been copied to the clipboard"

else if (count of dued) is 1 then
	set hourss to "0"

	if dayss is "0" then
		set morrow to current date
		set the clipboard to (do shell script "echo " & morrow & " | sed s/:[^..][0-9]//g | sed s/20..//  | sed s/,[^,]*$//")
		tell current application to display notification "Today's date has been copied to the clipboard"

	else if dayss is greater than "0" then
		set morrow to current date
		set morrow to morrow + dayss * days
		set morrow to morrow + hourss * hours
		set morrow to morrow as text
		set the clipboard to (do shell script "echo " & morrow & " | sed s/:[^..][0-9]//g | sed s/20..//  | sed s/,[^,]*$//")
		tell current application to display notification "The due date has been copied to the clipboard"
	end if

else if (count of dued) is 2 then
	if dayss is "y" then
		set past to item 2 of dued
		set past to "-" & past
		set morrow to current date
		set morrow to morrow + past * days
		set morrow to morrow as text
		set the clipboard to (do shell script "echo " & morrow & " | sed s/:[^..][0-9]//g | sed s/20..//  | sed s/,[^,]*$//")
		tell current application to display notification "The past date has been copied to the clipboard"

	else if dayss is not "y" then
		set hourss to item 2 of dued
		set morrow to current date
		set morrow to morrow + dayss * days
		set morrow to morrow + hourss * hours
		set morrow to morrow as text
		set the clipboard to (do shell script "echo " & morrow & " | sed s/:[^..][0-9]//g | sed s/20..//  | sed s/' '//3")
		tell current application to display notification "The due date and time has been copied to the clipboard"
	end if
end if
