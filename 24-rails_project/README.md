##Rails Project 2 - Hartl's Tutorial
You should read and complete the application in [Michael Hartl's "Ruby on Rails Tutorial"](http://www.railstutorial.org/book/). You can do this parallel to working on this assignment. These two will be due at the same time.

(Do you know how to pronounce [Hartl](http://www.pronouncenames.com/pronounce/HARTL)?)

You can keep this project in the homework repository. Skip the `git init` step that Hartl asks you to do (make sure you understand why he's asking you to do that and why we say you can skip it).


##Rails Project 3 - Small-Scope Open Ended Project

This project should be done in pairs, TAs will assign those for this project. Each pair can create their own shared repository and store the code there.


###Logistics
- Create Github Issues for each feature you want to do, and document everything clearly.
- Before you make your database, draw out a Entity-Relationship Diagram
- Commit frequently
- Use a "feature" branch for each new feature, and "pull request" them in to master when it's done. Normally pull requests aren't accepted until someone code-reviews the changes.
- Deploy your App to Heroku, and configure it to use their Postgresql database. See the Heroku Docs for setup info.

###Requirements

####Model
- Users must sign in to see anything except the sign in page. We should store their hashed password, using that for authentication.
- Users can interact with content
- Users can interact with other users (probably via their content)
- Use each type of database relationship somehow - has_one, has_many, and has_and_belongs_to_many
- Models must have unit tests (RSpec)
- Models must have validations

####View
- Plan the application first with a wireframe
- Style the site nicely
- Use at least one "partial" template
- A form submission with errors must show them gracefully


###Advanced features, optional
- OAuth for authentication (google, facebook, or twitter). Use this in parallel to our custom password-hash-storage authentication method.
- Use the Paperclip gem to allow users to upload a photo to their profile.
- Send email to users to notify them of changes.
- Use a polymorphic association - example: make a 'post' able to be either a text OR a photo, so users can still like or comment on it while being none-the-wiser.
- Integrate another API/Gem.


###Example Project Plan - Facebook
See The Odin Project's [Ruby on Rails Final Project](http://www.theodinproject.com/ruby-on-rails/final-project) for a more detailed specification.
