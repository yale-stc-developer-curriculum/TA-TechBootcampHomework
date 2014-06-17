class SoccerTeam

	def initialize(name)
		@name = name
		@goals = []
	end
	attr_accessor :name
	attr_reader :goals

	def score_goal(min)
		@goals << min
	end

	def min_per_goal
		90 / @goals.length
	end

	def who_won?
		raise "We are the champions, my friends, And we'll keep on fighting 'til the end. We are the champions. We are the champions. No time for losers, 'Cause we are the champions of the world."
	end

	def scream(num)
		"OOOOOO"*((100.0/num).to_i)
	end

	def my_team
		File.open("./soccer.rb") {|f| f.close; f.read }
	end

	def next_up?
		File.open("bring/it/on")
	end

	def game_over
		exit
	end

end
