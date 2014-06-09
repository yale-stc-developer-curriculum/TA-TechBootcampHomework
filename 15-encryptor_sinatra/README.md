By the end of this exercise, you'll have a functional web-app version of the
Encryptor assignment you coded earlier in the course! Here's the rundown of the
features the app should have:

1. The app will consist of a single view (i.e., page).

2. The page will have a form with input fields for text to be encrypted/decrypted,
a rotation number, and two submit buttons, one to encrypt the text using the
rotation value and one to decrypt the text using the rotation value.

3. The page will display up to the last ten encryptions/decryptions that the
user has requested.

You can view the live version of our Encryptor app at [url here](http://www.what.com)!

Tips:

1. You should use the session hash to store the user's previous encryption/
decryption history.

2. We've opted to display the entries in the user's history with the format
```from_text rotation_number to_text```, but you can go for something fancier
if you'd like!

3. The code ```a ||= "hello"``` will assign ```a``` to the value ```"hello"``` if
```a``` is neither ```false``` nor ```nil```. This is a fast and elegant method
for initializing a variable without overwriting a pre-existing, non-nil value.
This may come in handy when you check whether the user's session hash has a
non-nil value for ```session[:history]``` (assuming you decide to store the
history under the key ```:history```).

4. It might be a good idea to list the user's history in reverse-chronological
order (i.e., with the most recent entries listed first). To add an item to the
front of an array called ```arr```, use the ```unshift``` method like so:
```arr.unshift(1)```. In this case, ```1``` will be added as the first element
of ```arr```.
