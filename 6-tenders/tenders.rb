# ------------------------------------------------------------------------------
# Ruby control flow
# Is It Chicken Tenders Day?
# 5/30/2014
# ------------------------------------------------------------------------------

# To test any of your functions from the command line, type $ ruby tenders.rb
# and follow the instructions...

# ------------------------------------------------------------------------------
# Specification
# write a function lunch(day) that returns a different (your choice) meal for 
# each (case-insensitive) day of the week passed to it

# Examples
# lunch("Saturday") => "fish"
# lunch("Friday") => "pizza"
# lunch("SUNDAY") => "steak"
# ------------------------------------------------------------------------------

def lunch(day)

end

# ------------------------------------------------------------------------------
# Specification:
# write a function tenders_num(num) that will return "It's Chicken Tenders Day!"
# if the num represents the date of a Thursday, assuming the month starts with 
# Sunday the 1st. 

# Otherwise, tenders_num(num) should return 
# "You have x days to go.", where x is the number of days until Thursday.

# Examples
# tenders_num(5) => "It's Chicken Tenders Day!"
# tenders_num(2) => "You have 3 days to go."
# tenders_num(12) => "It's Chicken Tenders Day!"
# tenders_num(6) => "You have 6 days to go."
# tenders_num(101) => "You have 2 days to go."

# ------------------------------------------------------------------------------

def tenders_num(num)

end

# ------------------------------------------------------------------------------
# Specification:
# Same as specifications tenders_num(num), except now write a function
# tenders_adv(start, num) which returns "It's Chicken Tenders Day!"
# if the num represents the date of a Thursday, assuming the first Sunday of the 
# month is on the *start* date.

# Otherwise, tenders_adv(num) should return 
# "You have x days to go.", where x is the number of days until Thursday.

# Hint: You can use tenders_num(num)
# Examples
# tenders_adv(1, 5) => "It's Chicken Tenders Day!"
# tenders_adv(2) => "You have 3 days to go."
# tenders_adv(12) => "It's Chicken Tenders Day!"
# tenders_adv(6) => "You have 6 days to go."
# tenders_adv(101) => "You have 2 days to go."

# ------------------------------------------------------------------------------

def tenders_adv(start, num)

end


# ------------------------------------------------------------------------------
# Specification:
# Same as specifications for tenders_adv(start,num), except now write a function
# tenders_ultimate(start, num, day) which returns "It's Chicken Tenders Day!"
# if the num represents the date of a *day*, assuming the first Sunday of the 
# month is on the *start* date.
# Day should be a case-insensitive day of the week.

# Otherwise, tenders_adv(num) should return 
# "You have x days to go.", where x is the number of days until *day*.

# Examples
# tenders_ultimate(1, 5, "Thursday") => "It's Chicken Tenders Day!"
# tenders_ultimate(3, 8, "Monday") => "You have 6 days to go."
# tenders_ultimate(5, 19, "Wednesday") => "You have 3 days to go.""
# ------------------------------------------------------------------------------

def tenders_ultimate(start, num, day)

end


# ------------------------------------------------------------------------------

# Some code to facilitate testing your code from the command line
puts "You are ready to test!"
puts "Example inputs: lunch('Saturday'), tenders('thursday'), and so on"
puts "Type end to exit."
puts "*****************************************************************"

keep_going = true
while keep_going   # loops to keep asking for your input
	print "> " 
	code = gets.strip
	if code.downcase == 'end'    # we're done
		keep_going = false
		puts "*****************************************************************"
	else
		begin
			puts eval(code)   #evaluates your code, and outputs the result
		rescue Exception => e  
			puts e.message   #catches the error
		end
	end
end
