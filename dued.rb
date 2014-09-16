#!/usr/bin/ruby

# dued   
#  
# Usage:  
# 	dued -d <days from now>  
# 		print and copy the date x days from now  
# 		example - 'dued -d 2' prints the date two days from now  
# 	dued -y <days before today>  
# 		print and copy the date x days before today  
# 		example - 'dued -y 5' prints the date five days before today  
# 	dued -t  
# 		print todays date   

require 'date'
require "time"

num = ARGV[1].to_i
day = ARGV[0]
time = Time.now

case day

when "-y" #Find a date some days in the past
today = Date.today
dued = today - num
system("echo #{dued} | sed 's/20..-//' | sed -e '$ ! s/0//' | sed 's/-/\\//' | sed 's/^0//' | pbcopy | pbpaste")

when "-d" #Find a date some days in the future
today = Date.today
dued = today + num
system("echo #{dued} | sed 's/20..-//' | sed 's/0//g' | sed 's/-/\\//' | pbcopy | pbpaste")

when "-t" #Copy today's date
today = Date.today
dued = today
system("echo #{dued} | sed 's/20..-//' | sed 's/0//g' | sed 's/-/\\//' | pbcopy | pbpaste")

# the original 'dued' script has a time option. 
# that option in this ruby script is not functioning exactly as I need it to just yet.
# ---------------------
# when "-h"
# num = num * 60 * 60
# dued = time + num
# system("echo #{dued} } | awk '{ print $2 }' | sed 's/:[0-9].//' | pbcopy | pbpaste")
# find a way to use AM and PM

when "-help" # print help text
puts "
Usage:
	dued -d <days from now>
		print and copy the date x days from now
		example - 'dued -d 2' prints the date two days from now
	dued -y <days before today>
		print and copy the date x days before today
		example - 'dued -y 5' prints the date five days before today
	dued -t
		print todays date"

when nil # when no argument is entered
puts "Dued requires an argument. Type 'dued -help' for more information"

else
puts "That is probably not a valid command. For a list of options dued will accept, type 'dued -help'."

end
