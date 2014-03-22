dued
====

Formatted dates for plain text notes via applescript. 

I take a lot of notes in plain text and often want to add a due date to current tasks, but I'm usually too lazy to open up a calendar. This script allows me to quickly grab a future date or time and copy it to my clipboard without leaving my current note taking application. 

- If you want to set a date and time for your project/tasks due date, enter `d t` (thats the number of days from today and the hours from the current time, with a space between the two). Example: 2 days and 10 hours from now would be `2 10`. The result will be formatted "Monday, March 24, 4 PM"

- If you only want the day, enter `d`. Example: 2 days from now would be `2`. The result will be formatted "Monday, March 24"

- If you have a task that is due at a certain time today, type `h t`. The `h` denotes that you will be using only hours and the `t` is the number of hours from the current time the project is due. Example: 5 hours from now would be `h 5`. The result will be formatted "Today at 11 AM". 

Thats about all there is to it for now. While this scipt is primarly besed on the `current date` function of Applescript, the formatting of the date makes heavy use of `sed` - I typically find Applescript to be needlessly complicated for formatting text. 

To use `dued` clone/fork/download the zip and have fun. Feel free to use `dued` for whatever purpose you desire. Holler at me if you have questions, compliments, or complaints.  

Visit the [dued Help page](https://github.com/unforswearing/dued/blob/master/help.md) for a bit of documentation.   

You can find details about the [origins of this script here](http://scriptogr.am/unforswearing/post/future-dates). 
