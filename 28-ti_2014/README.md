![flylo](http://i.imgur.com/o47awIa.png)

# TI-2014

## Tech Bootcamp Evolves Onto Dry Land

Today we're doing a lotta new stuff, that means shiny new tools.

If you don't have Sublime Text Package Control installed, [install](https://sublime.wbond.net/installation#Simple) it now.  Then 

Then install JSHint, to make your code less messy:

- In Sublime, hit `Ctrl+Shift+P` or `Cmd+Shift+P` in Linux/Windows/OS X
- Type install, select Package Control: Install Package
- Type js gutter, select JSHint Gutter

Restart Sublime Text.

Once you've `cd`'d into this repository, run `npm install` then `sudo npm install -g gulp` then `sudo npm install -g bower` then `bower install mocha chai` and finally if you haven't run out of breath yet `gulp serve`.

Odds are something will go wrong so move fast moves to get first dibs on your TAs.  If that worked and nothing blew up, open `app/scripts/math.js` and start working!  Also open [localhost:3000](http://localhost:3000) and [localhost:3000/test.html](http://localhost:3000/test.html)