##dued help 
  
###About  

`dued` is an applescript that takes a few simple (mostly numeric) commands copies the formatted date to your clipboard for pasting in whatever plain text editor you prefer (or in-line pasting without the clipboard if you use the system service). `dued` was originally conceived as a way to speed up the process of adding future due dates to tasks and projects and is still very much a work in progress. 

For the curious, the name `dued` simply means <b>due d</b>ate, which (at 2 am when I finished writing the first version of the script) seemed exceedingly clever.  
<br>    


###Basic Usage  

When using `dued` keep in mind that you will be selecting a future date and/or time to set as the due date for your project or task. This means that if you will need to count the number of days and hours (time) from the current day and time. 

Having said that, there are three basic ways to use `dued`:  

1. **Date and Time**. To add the *date* and *time* to your note, type `d t`, which is the `day` and `time` in the future you would like to set as a deadline for your project or task. 

	For example, if today is `Friday, March 21, 7:00 AM` and you have a task that needs to be completed 3 days and 4 hours from now, you would simply enter `3 4`. The script will copy the formatted due date (`Monday, March 24, 11 AM`) to your clipboard. 

2. **Date only**. To only add the *date* to your note, type `d`, which is the day in the future you would like to use as a due date.  

	For example, if today is still `Friday, March 21, 7:00 AM` and you have a task that needs to be done next Friday (but with no specific time), enter `7`. Next Friday's date (`Friday, March 28`) will be copied to your clipbaord for easy pasting.  
	
3. **Due Today**. If you only needed to add the *time* to a note (specifically, if you had a project due later today), enter `h t`. The `h` denotes that you will not be using the day parameter. 

	For example, today is still draging along (`Friday, March 21, 7:00 AM`) and you have a project or task that needs to be finished six hours from now. Type `h 6`. The script will copy `Today at 1 PM` to your clipboard. 

- Finally, if you find that you need a reminder of the syntax, typing `help` will bring you directly to this page. 
<BR>  


The methods above can be used with the `dued` Applescript Applet, Alfred Extension, or OSX System Service. However, there are a few minor differences when using `dued` via these services.  

**Applescript Applet**  

`dued` was originally designed as an Applescript that would only fetch the date in the future (the pre-`dued` script [exists here](https://gist.github.com/unforswearing/9677819)). After using the current version of `dued` as an applet for a few days, I was bit bogged down by its speed. While it still affords me the ease of adding future dates to my notes when I want them, I still had to launch the application and type in the parameters. 

**Alfred Workflow**

The Alfred Workflow for `dued` is probably my favorite method of using this script. Like any workflow in Alfred, it requires that you enter the name of the command before entering the parameters. For example, to get a date and time 4 days and 4 hours from now requires you to enter `dued 4 4`. 

Entering `dued` before your date and/or time is the only difference between using `dued` as an Applescript Applet and Alfred Workflow. Typing `dued help` will bring you to this page.  

**OSX System Service**

Although Alfred is my favorite way to use `dued`, the OSX System Service is probably the easiest. Download and install the service, then bind it to a key combination. After doing those two things, you only need to type your parameters, highlight to select them, and enter your key combo. The System Service will replace the parameters with the formatted date, all directly into the application, with no need to paste from your clipboard.  Highlighting/selecting the word `help` and entering your key combination will bring you to this page.  
<BR>  

###To Do  

There is still a lot of work to be done with `dued`. Some of my ideas so far are to:  

- Add the ability to round up to the next hour for scripts that have a time deadline (e.g. if it is 5:45, round up to 6pm instead of using 5pm as the deadline).
- Add error checking/parsing to handle script failures. 
- Add photos to the documentation (for clarity).
- Possibly add some date formatting options via choose from a list (provided they don't slow the script down)



<BR>
###Known Issues  

1. Different date formatting. `dued` currently does not allow for any changes in the way the dates are formatted. However, since the formatting is all done via `sed`/`bash`, you could adjust the script to suit your needs (you can find a few suggestions [toward the bottom of this post](http://scriptogr.am/unforswearing/post/future-dates)).  

2. `dued` occasionally gets weird with dates that are more than 20 days in the future. `30` and `90` seem to cause a lot of issues with the output.  

3. When using `dued` to get a date and time, it will automatically round down. So if you are running the script past the 30 minute mark, your future time will reflect the current hour, not the next hour (meaning `5:30` will show as `5` in the future, not `6`). I would like to change this.  



