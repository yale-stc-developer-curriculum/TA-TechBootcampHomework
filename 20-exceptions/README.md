#Rescuing Exceptions

Try running the `soccer.rb` file. You'll see an error.

Your assignment is to rescue all the exceptions thrown. As soon as your program successfully executes, you have completed the assignment.

##Rules

1. Don't touch the `team.rb` file.
2. You are to edit the `soccer.rb` file:
	1. No deletions / modifications. You can only add code to what's already there.
	2. Please be as specific as possible when rescuing errors. I.e., if you can rescue either a general error or a more specific error, rescue the more specific error.
		- For example, `rescue NoMethodError` instead of `rescue` (without arguments) or `rescue StandardError` (vague).
	3. When you rescue an error, `puts` the name of the error and a nice message to the command line. 
