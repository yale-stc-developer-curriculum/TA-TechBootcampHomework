#Is It Chicken Tenders Day? Sinatra App

Your assignment is to create a chicken tenders Sinatra web application from scratch.

##File Structure

1. In this directory, create a `tenders.rb` file.
2. Create two new directories: `public` and `views`.
	1. In the `public` directory, create a `style.css` file
	2. In the `views` directory, create your `index.erb` file

Now we should be ready to go.

##Let's start with tenders.rb

1. First, you're going to want to `require 'sinatra'` at the top of your ruby file.
2. Next, go ahead and define a `tenders(day)` function.
	1. `tenders(day)` returns "It's Chicken Tenders Day!" if the day is "thursday" (case-insensitive) and "Nope." otherwise.
3. Time to dive into the sinatra part. Create the `get '/' do...` block.
4. Within this block, call tenders(day) on a value you pass into it (we are just hard-coding the day for now).
5. Finally, you need to pass this result into your erb file.
	1. Something of the form: `erb :index, :locals => {:result => result}` should do the trick
	2. I saved the result of `tenders(day)` to `result`, and will access this variable using `<%= result %>`.

##Time to Edit the ERB File and the Style.CSS

1. Go ahead and create your webpage. The string you passed into the erb file will be available using `<%= result %>`. 
2. Style the page however you like.
3. The `style.css` file is located in the `public` directory you created.

##Try It Out

1. Navigate to the proper directory and run: `ruby tenders.rb`.
2. Sinatra will take the stage.
3. Navigate to [localhost:4567](http://localhost:4567) in your browser.