## Deaf Grandma Assignment

Write a Deaf Grandma program.
- We have provided skeleton code for you (deaf_grandma.rb), including a while loop to prompt for input and display your response. You are to complete the self.responds(input) function, so that it returns the proper string or exits if necessary.
  - To use your code, change to the directory containing deaf_grandma.rb and type:
``` $ ruby -r "./deaf_grandma.rb" -e "DeafGrandma::test" ```
  - To test your code (using rspec) type the following:
``` $ rspec spec.rb ```

Here are the specifications:
- Whatever you say to grandma (whatever you type in), she should respond with "HUH?! SPEAK UP, SONNY!" , unless you shout it (type in all capitals).
- If you shout, she can hear you (or at least she thinks so) and yells back, "NO, NOT SINCE 19XX!"  
  - Have grandma shout a different year at random between 1930 and 1950.
- You can't stop talking to grandma until you shout BYE. Except she doesn't want you to leave, so you have to shout BYE three times in a row.
  - The first two times she should respond "Don't go..."
  - On the third bye, the program should exit.

## Submission
- To submit your homework, please commit your changes and push them to the your git repository. Your submission will be automatically graded and you will be notified of the results.  We will grade your homework using the exact same spec.rb file so you should already know your score!
  - You can submit your homework as many times as you like! So if something goes wrong, makes the changes and submit again.

(adapted from Chris Pine's "LearnToProgram" http://pine.fm/LearnToProgram/?Chapter=06)
