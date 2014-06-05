require 'erb'
class Article
	def initialize(title,date,preview)
		@title = title
		@date = date
		@preview = preview
	end

	attr_accessor :title, :date, :preview
end

title = "News Feed"

# You can access, say, the @title instance variables of article1 with the command
# 'article1.title'. Likewise for @date and @preview.

article1 = Article.new("Professor found living in Harkness",
					   "Thursday, June 5, 2014",
					   "Our Fruit class from the previous chapter had two instance variables, one to describe the kind of fruit and another to describe its condition.")
article2 = Article.new("20 People You Totally Wish You Were But Aren't",
					   "Wednesday, June 4, 2014",
					   "This is preview text. I would tell you who person #1 on the list is, but we need to drag you through as many pages as possible to improve our ad view rate. Cheers!")
article3 = Article.new("Why did I write this post?",
					   "Tuesday, June 3, 2014",
					   "I really need to get more sleep...,,hfgjffffffffffffffffffffffffff")

articles = [article1,article2,article3]

# Don't worry about the stuff below here (yet)! This code renders the HTML and
# 

template = File.read("index.html.erb")

renderer = ERB.new(template)

output = renderer.result()

puts output
File.open("index.html", "w") {|f| f.write(output)}