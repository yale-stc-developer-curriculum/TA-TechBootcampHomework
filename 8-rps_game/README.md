##Rock, Paper, Scissors: Part One -- Determining a Winner

Your assignment is to create a rock, paper, scissors game. Let's start simple. First, you are to write a function to determine the winner of two moves.

####Project Setup

- Create a file (in this directory) named `rps.rb`, in which you will define the primary functions.
- Create a file (in this directory) named `fight.rb`, in which you will define your rps strategies.
- Create a directory `spec` with the file `spec.rb`.
- Create a `Gemfile` to track the gems you use.

####The Basics

- Moves are represented as strings:
	- `'rock'`
	- `'paper'`
	- `'scissors'`
- This is a standard RPS game. Rock beats scissors, scissors beats paper, and paper beats rock. You know the drill.

####Comparisons:

**IMPORTANT:** This is an exercise in **test-driven development**. Please write the RSpec tests **before** you write your `compare(move1, move2)` function. See the section on RSpec tests below.

You are to define `compare(move1, move2)` in the `rps.rb file` you created, according to the following specifications.

- `compare(move1, move2)` compares two moves (`move1` and `move2`) and returns the winner (either `1` or `2`). If there is a tie, please return `0`.
	- `compare('rock','scissors') => 1`
	- `compare('paper', 'scissors') => 2`
	- `compare('scissors', 'scissors') => 0` 

####RSpec Tests
1. Within the `spec/spec.rb` file, please write 9 test cases for the `compare(move1, move2)` function:
	1. rock vs. scissors
	2. rock vs. paper
	3. rock vs. rock
	4. scissors vs. paper
	5. scissors vs. rock
	6. scissors vs. scissors
	7. paper vs. rock
	8. paper vs. scissors
	9. paper vs. paper
2. *Now*, go ahead and define the function-- `compare(move1,move2)`. 
3. Test away!

##Rock, Paper, Scissors: Part Two -- The Computer

At this stage, you are to define a basic computer strategy -- the computer is to randomly choose `rock`, `paper`, or `scissors` as its move.

1. Within the `fight.rb` file, define the function `fight_random()`:
	- `fight_random()` takes no arguments and randomly chooses `rock`, `paper`, or `scissors` as its move.

##Rock, Paper, Scissors: Part Three -- Pulling It All Together

It's now time to pull it all together. In this part, you are to create a full rock, paper, scissors game simulation.

1. Within the `rps.rb` file, define the function `play()`. It should start by displaying some basic game instructions. It should then repeatedly:
	1. prompt for the user's move
	2. generate the computer's move (using `fight_random()`)
	3. compare the two moves (using `compare(move1, move2)`)
	4. display the winner
	5. repeat steps 1-4 until:
	6. the keyword `exit` should exit out of your loop.

##Rock, Paper, Scissors: Looking Ahead

Within the next few days, we will be learning about objects and classes! Using these new tools, we will be **refactoring** our solutions so that each RPS game is an object of the RPS class. Our `fight.rb` file will define a `Fighter` class, where each game will also be a new `Fighter` object.  This way strategies will be able to take prior moves into account!

We will spiff up our strategies and in an ultimate **Battle Royale** we will face different strategies against each other to determine the ultimate winner! Feel free to brainstorm and test strategies ahead of time...
