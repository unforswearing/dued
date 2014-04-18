##dued help 
  
###About  

`dued` is an applescript that takes a few simple (mostly numeric) commands copies the formatted date to your clipboard for pasting in whatever plain text editor you prefer (or in-line replacement without the clipboard if you use the system service). `dued` was originally conceived as a way to speed up the process of adding future due dates to tasks and projects and is still very much a work in progress. For the curious, the name `dued` simply means <b>due d</b>ate, which (at 2 am when I finished writing the first version of the script) seemed exceedingly clever.   

As of 4/17/14, `dued` is currently at version 0.0.2  
<br>    


###Basic Usage  

When using `dued` keep in mind that you will be selecting a future date and/or time to set as the due date for your project or task. This means that if you will need to count the number of days and hours (time) from the current day and time. 

Having said that, there are three basic ways to use `dued`:  

1. **Date and Time**. To add the *date* and *time* to your note, type `d t`, which is the `day` and `time` in the future you would like to set as a deadline for your project or task. 

	For example, if today is `Friday, March 21, 7:00 AM` and you have a task that needs to be completed 3 days and 4 hours from now, you would simply enter `3 4`. The script will copy the formatted due date (`Monday, March 24, 11 AM`) to your clipboard.      

2. **Date only**. To only add the *date* to your note, type `d`, which is the day in the future you would like to use as a due date.  

	For example, if today is still `Friday, March 21, 7:00 AM` and you have a task that needs to be done next Friday (but with no specific time), enter `7`. Next Friday's date (`Friday, March 28`) will be copied to your clipbaord for easy pasting.  
	
4. **Today's Date**. If you just need today's *date* for note (without the time), type `0` (zero). `Friday, March 21` will be copied to the clipboard.  
	
5. **Due Today**. If you only needed to add the *time* to a note (specifically, if you had a project due later today), enter `h t`. The `h` denotes that you will not be using the day parameter. 

	For example, today is still draging along (`Friday, March 21, 7:00 AM`) and you have a project or task that needs to be finished six hours from now. Type `h 6`. The script will copy `Today at 1 PM` to your clipboard.   
	
6. **Past Dates**. If you have forgotten to update a done item, or want to add a *date* for something you completed yesterday (or any day before), enter `y t`. The `y` indicates that you are searching for a date in the past.   

	For example, today has picked up a little, but you forgot to add the date to an item you completed two days ago. Type `y 2`. The script will copy `Wednesday, March 26` to the clipboard.  
	
- Finally, if you find that you need a reminder of the syntax, typing `help` will bring you directly to this page. 
<BR>  


The methods above can be used with the `dued` Applescript Applet, Alfred Extension, or OSX System Service. However, there are a few minor differences when using `dued` via these services.  

**Applescript Applet**  

`dued` was originally designed as an Applescript that would only fetch the date in the future (the pre-`dued` scripts [exist here](https://gist.github.com/unforswearing/9677819)). After using the current version of `dued` as an applet for a few days, I was bit bogged down by its speed. While it still affords me the ease of adding future dates to my notes when I want them, I still had to launch the application and type in the parameters, which only saved a marginal amount of time. 

**Alfred Workflow**

The Alfred Workflow for `dued` is probably my favorite method of using this script. Like any workflow in Alfred, it requires that you enter the script keyword before entering the parameters. For example, to get a date and time 4 days and 4 hours from now requires you to enter `dued 4 4`. 

Entering `dued` before your date and/or time is the only difference between using `dued` as an Applescript Applet and Alfred Workflow. Typing `dued help` will bring you to this page.  

Finally, to be completely honest, the `dued` Alfred Workflow will probably be the most frequently updated version.  

**OSX System Service**

Although Alfred is my favorite way to use `dued`, the OSX System Service is probably the easiest and fastest. Download and install the service, then bind it to a key combination. After doing those two things, you only need to type your parameters after the task in your text editor, highlight to select them, and enter your key combo. The System Service will replace the parameters with the formatted date, all directly into the application, with no need to paste from your clipboard.  Highlighting/selecting the word `help` and entering your key combination will bring you to this page.  
<BR>  


###Known Issues  

1. Different date formatting. `dued` currently does not allow for any changes in the way the dates are formatted. However, since the formatting is all done via `sed`/`bash`, you could adjust that portion of the script to suit your needs (you can find a few suggestions [toward the bottom of this post](http://scriptogr.am/unforswearing/post/future-dates)). 

2. `dued` occasionally gets weird with dates that are more than 20 days in the future. `30` and `90` seem to cause a lot of issues with the output. This doesn't necessarily affect my use of the script (since I typically do not have due dates more than 2 weeks out), but I'd like to fix this for anyone who wants more flexibility. **Note** This seems to be an issue with the application and script only.   

3. When using `dued` to get a date and time, the time will reflect the current hour. If you are running the script past the 30 minute mark, your future time will be based on the hour you ran the script, not the next hour (meaning if you ran the script at `5:40 PM` will show as `5 PM` on your clipboard, not `6 PM`). I would like to change this so that tasks assigned with a future date and time will reflect the latest time possible, based on when the script is run. 
	
	**NOTE** I rarely use the **Date and Time** option, so this issue will likely remain open.  

If you encounter a problem with this script that is not listed above, [let me know](https://github.com/unforswearing/dued/issues).  
<BR>


###To Do    

There is still a bit of work to be done with `dued`. Some of my ideas so far are to:  

- Change months from text to number (e.g. from `Thursday, April 17` to `Thursday, 4/17`  
- Add photos to the documentation (for clarity)  
- [Let me know](https://github.com/unforswearing/dued/issues) if you have any feature requests.  

> Done as of Thursday, April 17, 2014:
>  
> ~~Add functionality for searching for past dates.~~ available in version 0.0.2     
> ~~Add error checking/parsing to handle script failures.~~ limited availability in version 0.0.2     
