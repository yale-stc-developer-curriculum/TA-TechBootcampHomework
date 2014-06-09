# Yearbook

## 1. Get organized

![hoarder](http://i.imgur.com/Oeo77KO.png)

Move all of your images to an `'images'` folder inside this directory.  Resize all of the images so that none of the images are more than 1000px wide and 1000px tall.  Name them according to month: `jan.jpg feb.jpg mar.jpg ... dec.jpg`

Open [dochub.io](http://dochub.io)

## 2. Take the skeleton out of the closet

![skeleton](http://i.imgur.com/u5ERvJn.png)

### 2.001 Get good at Sublime Text shortcuts

Go on Google and figure out how to 

1. Select multiple things at once using keyboard shortcuts and by using the mouse.
2. Move lines/selections up and down
3. Duplicate and delete the current line

You should memorize these shortcuts. I'd bet they've saved me a day of my life by now.  Once you have a bunch of these down, you can join the ranks of the TAs, constantly snickering in silence over the newbie mouse-pushers.

![wink](http://i.imgur.com/HeamYCQ.gif)

### 2.002

Create a `.container` div in the root of your document, then create 12 children `.pic` div's inside of that container.  Each `.pic` div needs a `.description` div followed by a `.picture` div.

## 3. Build a wireframe

![trippy](http://i.imgur.com/XDnBV95.png)

### Center it

We need to horizontally center our `.container` div so that it looks nice.  The easiest way to do this is to give the `.container` a set width in pixels.  Choose a number between 400px and 900px that is *divisible by three*.  Now, figure out how to use the `auto` keyword with the `margin` css property to center the `.container` div.

### Make it visible

To make sure that everything is working as expected, give the `.container` a 1px solid black border, and give each `.pic` div a 1px solid red border.

### Create a grid

Give the `.pic` div the correct width so that three of them line up in each row inside of the `.container` div.  If you're having trouble, read [this](http://learn.shayhowe.com/html-css/opening-the-box-model/#box-model).

**You will probably need to set a property in your `.container` div for this to work the way you want it to.**

**You will definitely need to give your `.pic` div the property of `overflow: hidden;`, and probably a `margin-right: -3px` as well.**

It should look very similar to this:

![example](http://i.imgur.com/AudNthi.png?1)

## 4. [Let's get this party started](https://www.youtube.com/watch?v=qKq4Q9ZUaa0)

Inside of your `.description` divs, write the month of the year in an `.h1` tag and following that, write a description of each month's shenanigans.  It should look like this:

![wireframe image](http://i.imgur.com/BtRnYNi.png)

## 5. Add some color

Make your `.picture` div's absolutely positioned so that they start in the upper left corner of the `.pic` div.  Remember what you learned about how to position the parent of an absolutely positioned element?  If you need a refresher, read through some of [this](http://learn.shayhowe.com/html-css/positioning-content/#uniquely-positioning-elements).

You'll need to give the `.picture` div 100% width and height.  Use an inline style on each `.picture` div to give it the right image.  For example, 

```html
<div class="className" style="background-image: url('help_im_trapped_inside_of_this_README.jpg');"></div>
```

### Make it look nice

You'll need to change the `background-size` property so that the pictures don't look terrible.  If your pictures are lined up sorta weird, look at [this](https://developer.mozilla.org/samples/cssref/background-position/)

Things should look similar to this at this point:

![example](http://i.imgur.com/8pIylxC.png)

## 6. Lights, camera, action!

Take advantage of the `opacity` property to make the picture disappear when you hover over the `.pic` div.  Animate this using `transition`.  When you hover over a month, it should look like this:

![example](http://i.imgur.com/o4O6Bcv.png)

## 7. [To A New Earth](https://www.youtube.com/watch?v=1jlW3_3wnbY)

![space](http://i.imgur.com/7PGg6zm.jpg?1)

### CSS3 Transforms

That's cool but we can do way better.  Instead of animating the opacity, we're going to animate a CSS3 Transform.  CSS3 Transforms are the most important feature introduced in CSS3 and allow us to do amazing things that were completely unimaginable 10 years ago.  They have redefined the notion of what a web page is and what it can look like.

Look up the `transform` property, and figure out how to do the following to the `.picture` class when its parent `.pic` is hovered over:

- Rotate -15 degrees on the Z axis
- Scale by a factor of 1.5
- Translate -85% on the X-Axis
- Translate 10% on the Y-Axis

**This part is hard and your TAs are here to help.**

### Annoying browser-specific issues because we're just that cutting edge

Encode these into a `transition` property.  You'll notice that if you're in Safari and you hover, nothing happens.  This is because this stuff is so new that we need something called _vendor prefixes_.  They are listed [here](http://peter.sh/experiments/vendor-prefixed-css-property-overview/).  For every property that needs a prefix, e.g. `transition`, add the vendor prefixes with the same values below it.  Here is an example:

```css
.className {
	column-count: 3;
	-moz-column-count: 3;
	-webkit-column-count: 3;
}
```

Once you've done this for your `transition` property, it should animate when you hover over it.  If it doesn't, you've written your `.picture`'s `transition` property wrong.

### Disaster strikes

Unfortunately, you'll notice that the moving image gets clipped by the borders of its containing `.pic` div.

## 8. Flexbox

### W3C to the rescue

Until two years ago, there wasn't a good solution to this problem.  Fortunately, the W3C [drafted](http://dev.w3.org/csswg/css-flexbox/) a specification of a "Flexbot" layout that makes things like [these](http://philipwalton.github.io/solved-by-flexbox/) way easier!

Remove the `overflow: hidden` and `margin-right: -3px` property from your `.pic` div.  Refresh your browser to confirm that we have just annihilated our pretty grid layout.  We'll soon fix it.

**Read [this](http://css-tricks.com/snippets/css/a-guide-to-flexbox/) entire guide on Flexbox.**

Flexbox isn't the most popular way to do layouts these days, but in a few years it will be, so you are doing yourself a favor by learning how to use it now.  Change the `display`, `flex-direction`, and `flex-wrap` properties of the `.container` class so that the grid works again.

Things should look like this once you've gotten it worked out (this image was taken while hovering over the March div)

![example](http://i.imgur.com/p2GxFhS.png)

You'll notice that the `.pic` div's that precede the hovered div don't cut the image off, but the ones after the hovered div do.  CSS3 selectors to the rescue.

If you've forgotten, look up how to do a sibling selector in CSS3.  Look up the `z-index` CSS property.

Fuse these two ideas together to make sure that `.pic` div's after a hovered `.pic` div have a z-index that keeps them behind the magnified picture.

## 9. More eye candy

![eye candy](http://i.imgur.com/YjKeqVx.png?1)

Look up how to do a `box-shadow` and use one of the online `box-shadow` generators to give a hovered picture a nice shadow to differentiate it a bit from the other photos.

Let's do another transform to make your description of each picture slide out, too.  Transform it when its parent `.pic` is hovered over by

- Rotating it 5 degrees on the Z axis
- Scaling it by a factor of 1.1
- Translating it 20% on the X-Axis
- Translating it 10% on the Y-Axis

Now let's make everything a little sexier...

- Come up with a [color scheme](http://colorschemedesigner.com/), and use it to spruce everything up.
- Give some padding to the `.description` class, try using `border-radius` on something
- Go to [Google Fonts](https://www.google.com/fonts) and use a better font for everything
- Make a heading with a paragraph summary of your last year before the photo gallery.  Center its text.

## 10. Sandbox

Play around with the CSS transforms.  See if you can't figure out how to do some awesome 3D effects!  Outdo your TAs.

![fat guy](http://replygif.net/i/1483.gif)

## 11. Github Pages
Follow instructions at pages.github.com to deploy your HTML/CSS files to the internet.

- Create a new repository named `Yearbook`
    - go to [http://github.com] and click "New Repository". You can initilize a README.md and clone it down from the server.
- Put your HTML/CSS files here, naming the yearbook page `index.html` and putting the css file in the same root directory.
- Get your files onto a `gh-pages` branch of this repository, and push.
- Your site will appear at `GITHUBUSERNAME.github.io/Yearbook`

## 12. Heroku (optional)

We'll cover deploying a Sinatra app to Heroku later in this class and we'll explain all about deployment, servers, and Heroku.

If you get ahead, you can try to follow the below instructions to deploy this application using node.js to serve your two static files. This section is totally optional and we don't expect most people to do it.


Create two new files `package.json` and `app.js` and fill them with the following code.  Read over the code, you know enough at this point to have a pretty good idea of what is going on.  These have lots of parallels to how a Sinatra app is set up in ruby, but this server is written in Javascript and runs on the Node.js Javascript framework.

`package.json`
```json
{
  "name": "simple-express-static-server",
  "version": "0.0.1",
  "description": "A very simple static file server.",
  "main": "server.js",
  "scripts": {
    "start": "node server.js"
  },
  "repository": {
    "type": "git",
    "url": "git://github.com/spadin/simple-express-static-server.git"
  },
  "author": "Sandro Padin",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/spadin/simple-express-static-server/issues"
  },
  "engines": {
    "node": "0.10.x"
  },
  "homepage": "https://github.com/spadin/simple-express-static-server",
  "dependencies": {
    "express": "^4.1.2",
    "body-parser": "^1.1.2",
    "errorhandler": "^1.0.1",
    "method-override": "^1.0.0"
  }
}
```

`app.js`
```javascript
var express = require("express"), // Load up the express web server
    app = express(), // Start the server
    bodyParser = require('body-parser'), // These next three are just utilities
    errorHandler = require('errorhandler'),
    methodOverride = require('method-override');

app.get("/", function (req, res) {
  res.redirect("/index.html"); // By default, serve the file 'index.html'
});

app.use(methodOverride());
app.use(bodyParser());
app.use(express.static(__dirname + '/public')); // Use files in the 'public' directory
app.use(errorHandler({
  dumpExceptions: true,
  showStack: true
}));

var port = Number(process.env.PORT || 3000); // Listen on port 3000 by default

app.listen(port, function() { // Listen for HTTP GET requests on port 3000.
  console.log("Listening on " + port);
});
```

Now move `index.html` and all of your pictures into a new folder named `public`, which shall be inside the current folder (```14-yearbook```).  Go to [nodejs.org](http://nodejs.org/) and install Node.js.  Go to your terminal, navigate to the ```14-yearbook``` folder, and type

```bash
sudo npm install
```

This installs all of the packages that this app depends on, like the `express` web server

then

```bash
node app.js
```

This launches your app locally.  Navigate to [localhost:3000](http://localhost:3000/) and make sure everything looks right.  If not, call over a TA.

### To Heroku

Go [here](https://devcenter.heroku.com/articles/quickstart), make a Heroku account, and install the Heroku toolbelt. Once that's done, type

```bash
heroku login
```

Now create a new file named `Procfile` (no file extension, just `Procfile`).  Fill `Procfile` with the following.

```
web: node app.js
```

This is just a Rakefile but in JS format.  Now make a new directory that resides _outside_ your Git homework repository.  Copy everything inside `14-yearbook` into this new folder.  Run the following commands in a terminal window inside this new directory:

```bash
git init
git add .
git commit -m "init"
```

Now type

```
heroku create
```

This `heroku create` command is really cool because it creates a new "virtual computer" inside one of Heroku's data center warehouses, and sets up a Git remote on your machine that you can use to push this website up into their data center!  All for free, too!

Then

```
git push heroku master
```

You should see a url near the bottom of the screen around here:

![url](http://i.imgur.com/2GR92aN.png)

Paste that into your browser and your site should be live!  Now go to [livetype.meteor.com](http://livetype.meteor.com) and paste that URL in so that the rest of the class can check it out.