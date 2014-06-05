#ERB Assignment

We've provided a template html page for you that will serve as the news feed for  
the news blog you and your friends are launching. So far, you've just been hard-  
coding in the posts on the news feed as new ones are written, but you're a coder  
and therefore lazy, so this isn't ideal. Thankfully, embedded Ruby (ERB) can fix  
this problem! We'll walk you through converting this html page to an ERB template  
and adding the embedded Ruby to make your job easier!

1. First, let's save the ```boring.html``` file as ```index.html.erb```. This will turn your boring HTML file into an ERB template.
2. Now try running ```ruby news.rb```, which will parse through your new template and generate an HTML file, called '```index.html```'. Since we haven't embedded any Ruby in the template, this will just generate the same page that we started with.
3. Now that we can render HTML from our template, let's start embedding some Ruby in the template. In ```index.html.erb```, include an ERB tag that will place the page's title between the HTML ```<title>``` tags. Run ```ruby news.rb``` to re-render the HTML and check if you've done it correctly.
4. Now we'll embed Ruby to generate the posts in the feed. As you can see in ```news.rb```, we already have three article objects, each with instance variables corresponding each the post title, date, and preview text. Let's add ERB tags to place the first article's title, date, and preview text in the correct spots in our HTML. Great! If you haven't messed up yet, you should see... exactly the same page!
5. What we did in the last step we can do for the next two articles, which would be great if we only ever wanted three posts in the feed. But we don't, so we won't. Instead, let's iterate through the ```articles``` array we've defined in ```news.rb``` so we can generate an arbitrary number of posts on our feed!
6. And that's all there is to it! You've capitalized on ERB to make updating your news feed a breeze! And, in fact, this is just how lots of news sites and blogs update their sites with fresh content.