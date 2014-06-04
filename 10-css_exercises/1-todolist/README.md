# The BootList

### A todo list unlike anything we've ever seen before

## 1. Let's get oriented

Okay, so this looks bad.  Go and read through all of `index.html` and pay special attention to the comments that are written.  Also check out the blank `style.css` file that's in the directory.

Also, I'd load up [DocHub.io](http://dochub.io).  It will make your life easier when looking up this stuff, and it's way better than the stuff W3Schools serves up.

## 2. Develop a color scheme

Let's choose a palette of colors to work with for our app.  You can do this yourself, but I'd highly suggest going to [this color scheme generator](http://colorschemedesigner.com/) and creating one.  Try using the color rotators (complement, triad, tetrad, etc.).

Once you're happy with what you have, click the export button and select `HTML+CSS...`.  Keep that new tab open for reference.  The weird numbers that look like `A64B00` are just Hex colors.  To use them in your CSS file, you must prepend them with a hashtag like so:

```css
.className {
	background-color: #A64B00;
}
```

## 3. My eyes are bleeding

We need to change that disgusting font.  Try setting the text for your `.todo` class using a line like the following:

```css
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
```

If you think that font sucks, look up a list of "Web-safe fonts" and try one of those.

## 4. Think inside the box

Give the `.todo` and `.name` classes some spunk by changing the text and background colors, as well as adjusting the margins and padding to suit your liking.  You may notice that by default the todo items stack on top of one another.  This is because `div` elements automatically are given the `display: block;` property.  Try setting the `.todo` class to have a `display: none;` property to see what happens!.

## 5. Get your priorities straight

Notice the `.priority-1`, `.priority-2`, and `.priority-3` classes?  Take advantage of those to give your user some visual representation of how urgent various todo items are.  There are a few options here!  You could change the background color of the item depending on what its priority is.  You could also create a really big border on the left, right, top, or bottom of the todo that has a certain color according to its priority.  Try to use the colors from your color scheme for this.  Shoot for the moon.

## 6. It's a free country

We need to allow our users to change what they have on their todo list, and for that we need some sort of menu.  This will be a fake menu that doesn't do anything, but hang in there.

Uncomment all of the `div.menu` elements so that they show up.  Experiment with making the text a little bit smaller so that it doesn't distract from the important thing, which is the name of each todo item. Check out the `text-transform` property.

## 7. Let's get weird

Why show a menu for every todo item?  That's distracting.  Change your `.menu` class so it has 0% opacity!  Look up the `opacity` property to figure out how to make this happen.

To make it show up when it needs to be seen, use the `:hover` pseudoselector (similar to stuff like `:nth-child`) in combination with the `opacity` attribute so that when a user hovers over a todo, the menu shows up.  You might need to use some of the fancy selectors you were exposed to in the [CSS Diner](http://flukeout.github.io/).

## 8. Lights, camera, action

### Part 1

It's kind of jarring how that menu just flies up out of nowhere when you hover.  Hard on the eyes.  Let's have it fade in.  You'll need to specify some `transition` attributes.  Hint:

```css
	transition: opacity 300ms ease-out 0ms
```

This will transition the opacity attribute over the course of 300 milliseconds with a 0ms delay, with an ease-out easing.  (What's easing?  [Click](http://easings.net/))

### Part 2

Make your menu slide out.  Make sure that it's positioned using a `relative` or `absolute` property.  When it isn't active, use one of the `top | left | right | bottom` properties to offset it by a negative number of pixels.  Then, when it's active (hovered), have it slide out by making the `top | left | right | bottom` property become `0` instead of a negative number.  You'll have to change your `transition` attribute so that it transitions `all` properties, instead of just the `opacity` property.

## 9. Go wild

Do something else cool to impress your TA's!  Then move on to the next exercise.  Later, you'll put this up online and show it to the whole class.