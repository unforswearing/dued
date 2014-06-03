##dued help 
   * [About](#about)
   * [Usage](#usage)
   * [Known Issues](#known-issues)
   * [To Do](#to-do)

  
###About  

`dued` takes a few simple (mostly numeric) commands to create a formatted date, which is copied to your clipboard for pasting in whatever plain text editor you prefer (or in-line replacement without the clipboard if you use the system service). I take a lot of notes in plain text and often want to add a due date to current tasks, but I'm usually too lazy to open up a calendar. This script allows me to quickly grab a future date or time and copy it to my clipboard without leaving my current application. 
   
For the curious, the name `dued` simply means <b>due d</b>ate, which (at 2 am when I finished writing the first version of the script) seemed exceedingly clever. The simple origins of this script can be [found here](https://gist.github.com/unforswearing/9677819) with an [explanation of the script here](http://scriptogr.am/unforswearing/post/future-dates).  
  
As of 4/17/14, `dued` is currently at version 0.2    
<br>    


###Usage  

`dued` has five basic functions:     

1. **Date and Time**. To add the *date* and *time* to your note, type `d t`, which is the `day` and `time` in the future you would like to set as a deadline for your project or task. 

	For example, if today is `Friday, March 21, 7:00 AM` and you have a task that needs to be completed 3 days and 4 hours from now, you would simply enter `3 4`. The script will copy the formatted due date (`Monday, March 24, 11 AM`) to your clipboard.      

2. **Date only**. To only add the *date* to your note, type `d`, which is the day in the future you would like to use as a due date.  

	For example, if today is still `Friday, March 21, 7:00 AM` and you have a task that needs to be done next Friday (but with no specific time), enter `7`. Next Friday's date (`Friday, March 28`) will be copied to your clipbaord for easy pasting.  
	
3. **Today's Date**. If you just need today's *date* for note (without the time), type `0` (zero). `Friday, March 21` will be copied to the clipboard.  
	
4. **Due Today**. If you only needed to add the *time* to a note (if you had a project due later today, for example), enter `h t`. The `h` denotes that you will not be using the day parameter. 

	For example, today is still draging along (`Friday, March 21, 7:00 AM`) and you have a project or task that needs to be finished six hours from now. Type `h 6`. The script will copy `Today at 1 PM` to your clipboard.   
	
5. **Past Dates**. If you have forgotten to update a done item, or want to add a *date* for something you completed yesterday (or any day before), enter `y d`. The `y` indicates that you are searching for a date in the past.   

	For example, today (`Friday, March 21`) has picked up a little, but you forgot to add the date to an item you completed two days ago. Type `y 2`. The script will copy `Wednesday, March 19` to the clipboard.  
	
- Finally, if you find that you need a reminder of the syntax, typing `help` will bring you directly to this page. 
<BR>  


The methods above can be used with the `dued` Alfred Extension or OSX System Service. However, there are a few minor differences when using `dued` via these services.  

**Alfred Workflow**

The Alfred Workflow for `dued` is probably my favorite method of using this script. Like any workflow in Alfred, it requires that you enter the script keyword before entering the parameters. For example, to get a date and time 4 days and 4 hours from now requires you to enter `dued 4 4`. Typing `dued help` will bring you to this page.    


**OSX System Service**

Although Alfred is my favorite way to use `dued`, the OSX System Service is probably the easiest and fastest. Download and install the service, then bind it to a key combination. After doing those two things, you only need to type your parameters after the task in your text editor, highlight to select them, and enter your key combo. The System Service will replace the parameters with the formatted date, all directly into the application, with no need to paste from your clipboard.  Highlighting/selecting the word `help` and entering your key combination will bring you to this page.    

**Ruby Script**   

[I have created a version of `dued` in ruby](https://github.com/unforswearing/Ruby/blob/master/dued.rb) that has limited functionality compared to the above methods. Specifically, `dued` in ruby cannot accurately parse times. The `dued` ruby script is very very much still a work in progress and was started as a way to learn the language through doing something practical (like re-writing applescripts), so please take that into account if you plan to use this version. I currently have script saved as alias `dued` in my `bash_profile` for development purposes, but do whatever you see fit. I plan on maintaining the ruby `dued` along side the sytem service and Alfred workflow.    
<BR>  


###Known Issues  
   
1. Different date formatting. `dued` currently does not allow for any changes in the way the dates are formatted. However, since the formatting is all done via `sed`/`bash`, you could adjust that portion of the script to suit your needs (you can find a few suggestions [toward the bottom of this post](http://scriptogr.am/unforswearing/post/future-dates)). 

2. When using `dued` to get a date and time, the time will reflect the current hour. If you are running the script past the 30 minute mark, your future time will be based on the hour you ran the script, not the next hour (meaning if you ran the script at `5:40 PM` will show as `5 PM` on your clipboard, not `6 PM`). I would like to change this so that tasks assigned with a future date and time will reflect the latest time possible, based on when the script is run. 
	
	**NOTE** I rarely use the **Date and Time** option, so this issue will likely remain open.  

If you encounter a problem with this script that is not listed above, [let me know](https://github.com/unforswearing/dued/issues).  
<BR>


###To Do    

There is still a bit of work to be done with `dued`. Some of my ideas so far are to:  

- Change months from text to number (e.g. from `Thursday, April 17` to `Thursday, 4/17`) (This is currently possible in the `dued` ruby script.)
- Round hours up or down depending whether the script is run before or after the half hour mark.  
- Create a `reverse dued` function: entering future date returns the number of days from that date. (This will be available in the `dued` ruby script soon)   
- Create a separate `dued` (maybe called `tued`) that will handle all time based deadlines.   
- Add documentation as comments in the script  
- Add photos to the documentation (for clarity)      
- ~~Add functionality for searching for past dates.~~ available in version 0.2     
- ~~Add error checking/parsing to handle script failures.~~ limited availability in version 0.2     


[Let me know](https://github.com/unforswearing/dued/issues) if you have any feature requests.
