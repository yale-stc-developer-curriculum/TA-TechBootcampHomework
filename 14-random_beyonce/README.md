###Sinatra CRUD Application
Goal: Create an application that can CRUD (Create, Retrieve, Update, Destroy) youtubesets.

###1. Base Specification (Required)
  - Create each of the routes listed in [[RESTful Routes]]
  - Layout
    - Each page should have a navigation bar at the top.
      - This bar should include a link to "Home" with the URL `"/"`
      - It should also include a link to "Sets" with the URL `"/sets"`
  - Data Input & Storage
    - We can assume that only youtube video numbers will be submitted (not `www.youtube.com/watch?v=jZVdDl_asYY` just `jZVdDl_asYY`)
    - Youtube video numbers should be submitted as a newline-separated list (press enter after each link).
    - Add a description field to each playlist. (see Songza's playlist descriptions for some fun examples)
    - Youtube video numbers should be stored in the session, in a variable structured as a hash with the format `"sets" => { "SETNAME" => { "name" => "SETNAME", "vidnums" => ["VID1", "VID2", "VID3"], "description" => "This is the best playlist ever!" } }`
    - each set will use its name as the key in the `sets` hash and will include the keys `name` and `vidnums` pointing to a string with the set name and an array with the Youtube links, respectively.
  - Hints for Destroy
    - Anchored links (`<a href=''...>`) can only pass method="post" method (some claim they also do well with get)
    - Pure html forms can only pass method="post" and method="get"
    - to pass method="delete" in Sinatra, we need to enable method overriding by adding "_method = true" in the configure method of our app in the .rb file, then in the .erb file (or any part of HTML code) we can use method="delete" and it will be addressed properly.
    - For Destroy, see http://www.sinatrarb.com/configuration.html
  - Only work on one feature at a time, here's an example path:
    + Get a given youtube video to be embedded (in an erb file)
    + Get the application to work for a single hard-coded video, stored in a Ruby variable
    + Get the application to work by choosing a random video from a hard-coded set, stored in a Ruby variable
    + Get the application to accept user input of video tags, storing them in the session hash
    + Use the session hash instead of the hard-coded ruby variables
  - The application should work for `http://` but doesn't have to work for `https://` (that requires a trick I'm not interested in you learning right now)
  - At least check out the RuboCop/Ruby Style Guide (below).


####Routes
Your application should include each of these routes.

Sinatra only uses the HTTP Verbs and the URLs. Rails additionally uses Controller and Action - these are just here for reference for now.

HTTP Verb | URL | Controller | Action | used for | Must create View?
--- | --- | --- | --- | --- | ---
GET | /sets | Set | index | display all sets in an overview | Yes
GET | /sets/new | Set | new | return an HTML form for creating a new set | Yes
POST | /sets | Set | create | create a new set | No
GET | /sets/beyonce | Set | show | display a specific set | Yes
GET | /sets/beyonce/play | Set | a custom one! | play a specific set | Yes
GET | /sets/beyonce/edit | Set | edit | return an HTML form for editing a set | Yes
PUT | /sets/beyonce | Set | update | update a specific set | No
DELETE | /sets/beyonce | Set | destroy | delete a specific set | Yes



###4. Bonus (Optional)
These are optional for everyone, but you'll potentially learn the most from these
  - Meet all [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide) guidelines. You can test this by running [rubocop](https://github.com/bbatsov/rubocop).
    - Add it to your gemfile and `bundle install` (or just `gem install rubocop`)
    - (restart the terminal)
    - `rubocop` (in the right directory)
  - Get the input to handle additional list formats - comma separated, space separated, tab separated.
  - Get the input to accept whole URLs instead of just the video numbers (&v=a1hNo91)
    - One way would be to use a Regular Expression
    - Another way would be to use Ruby's URI Parser
  - Make your application work over HTTPS as well as HTTP
