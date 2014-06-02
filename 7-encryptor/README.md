## Encryptor Assignment

Write an Encryptor program.
- We have provided skeleton code for you (encryptor.rb). You should complete the self.cipher(rotation), self.encrypt(input,rotation), and self.decrypt(input,rotation) functions, where 'input' is inputted plaintext/ciphertext to be encrypted/decrypted and rotation is the number of characters that the text will be rotated by.
  - To use your code in an interactive environment, change to the directory containing encryptor.rb and type:
``` $ irb ```
``` $ load './encryptor.rb' ```
  - To test your code (using rspec) type the following:
``` $ rspec spec.rb ```

Here are the specifications:
- The rotation value specifies the number of characters that the text rotates by. For instance, ``` encrypt("A",1) ``` should return ``` "B" ``` and ``` encrypt("Hello",2) ``` should return ``` "Jgnnq" ```.
- The decrypt function should "un-rotate" the given ciphertext by the rotation value. For instance, ``` decrypt("Jgnnq",2) ``` should return ``` "Hello" ```.
- The range of characters you should rotate over is ' '..'z', which includes non-alphanumeric characters.

## Submission
- To submit your homework, please commit your changes and push them to the your git repository. Your submission will be automatically graded and you will be notified of the results.  We will grade your homework using the exact same spec.rb file so you should already know your score!
  - You can submit your homework as many times as you like! So if something goes wrong, makes the changes and submit again.

(adapted from Jumpstartlab.com's "Encryptor" project at http://tutorials.jumpstartlab.com/projects/encryptor.html)