set dued to text returned of (display dialog "How many days and hours from now?" default answer "" buttons {"OK"} default button "OK")

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
	
else if (count of dued) is 1 then
	set hourss to "0"
	set morrow to current date
	set morrow to morrow + dayss * days
	set morrow to morrow + hourss * hours
	set morrow to morrow as text
	set the clipboard to (do shell script "echo " & morrow & " | sed s/:[^..][0-9]//g | sed s/20..//  | sed s/,[^,]*$//")
	
else if (count of dued) is 2 then
	set hourss to item 2 of dued
	set morrow to current date
	set morrow to morrow + dayss * days
	set morrow to morrow + hourss * hours
	set morrow to morrow as text
	set the clipboard to (do shell script "echo " & morrow & " | sed s/:[^..][0-9]//g | sed s/20..//  | sed s/' '//3")
	
end if
