# Deaf Grandma HW Assignment

# can be tested on the command line using:
#    $ ruby -r "./deaf_grandma.rb" -e "DeafGrandma::test"

class DeafGrandma
	

	# creates deaf_grandma's response to *input*
	def self.responds(input)

	
# *************************************

# the bulk of your code should go here

# *************************************








	end



	# a method to test grandma(input) on the command line
	def self.test
		puts "Say something to Deaf Grandma"
		while true                   # while loop: repeatedly asks for input; puts response
			input = gets.chomp
			puts responds(input)
		end

	end

end
