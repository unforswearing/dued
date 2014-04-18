dued
====
Alfred extension and system service for formatted dates via applescript. 

I take a lot of notes in plain text and often want to add a due date to current tasks, but I'm usually too lazy to open up a calendar. This script allows me to quickly grab a future date or time and copy it to my clipboard without leaving my current note taking application.  

Run the script, type 

- `d t` (days and time (hours) from now) 
- `d` (days from now)   
- `h t` (hours from now)   
- `0` (zero) for today's date  
- `y d` (yesterday and days from today)   

The script will copy the formatted date to your clipboard or replace the text in your editor (text replacement occurs in the OSX Service only).   

`dued` works on 10.6 and above.   

This is what `dued` does with Alfred    
<BR>  
![dued demo](https://raw.githubusercontent.com/unforswearing/dued/master/images/DuedDemo2.gif)   

*What's new in Version 0.0.2* - (April 17, 2014)    

- Copy todays date by entering `0`   
- Copy dates in the past by typing `y` and the number of days from today (`y 1` would be yesterday, for example)  
- Error processing for invalid commands 

####dued, yeah!
`dued` is currently available as an Alfred Workflow, Application, Applescript, and OSX System Service/Workflow. To use `dued`, clone/fork/download the zip and have fun fulfilling your hearts desires. Holler at me if you have questions, compliments, or complaints. I accept [issues](https://github.com/unforswearing/dued/issues) and email -- `notes @ theforeverarrow.com`.   

####dued, what?
Visit the [dued Help page](https://github.com/unforswearing/dued/blob/master/help.md) for a bit of documentation.        You can find details about the [pre-dued scripts here](http://scriptogr.am/unforswearing/post/future-dates).   

####dued, more!!  
I do not want to overload `dued` with options, but I am working on a few ideas. Check the [To Do section](https://github.com/unforswearing/dued/blob/master/help.md#to-do) of the [Help page](https://github.com/unforswearing/dued/blob/master/help.md) for info.  
