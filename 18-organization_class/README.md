#Part 1: Organization Class

Your assignment is to create an `Organization` class for Yale student organizations.

##Instance Variables

- `@name` -- the name of the organization
- `@description` -- a description of the organization
- `@members` -- an array of the names of the members of the organization
- `@money` -- the amount of money the organization currently has available (a float)
- `@puppy` -- whether or not the organization has a puppy

##Methods

- start by defining your `initialize` method
	- all organizations must have a `name`
	- please have the following default values *(if no description, members, money, or puppy info is provided during initialization)*
		- `description` --> `"A group at Yale"`
		- `members` --> `[]`
		- `money` --> `0`
		- `puppy` --> `false`

###GET METHODS

- `get_name` should return the name of the organization
- `get_description` should return the description of the organization
- `get_members` should return the array of the names of the members of the organization
- `get_money` should return the amount of money the organization has available
- `has_puppy?` returns true or false as to whether the organization has a puppy

###SET METHODS

- `set_name(name)` sets the organization's name to `name`
- `set_description(description)` sets the organization's description to `description`
- `add_member(name)` adds a member named `name` to the organization
- `delete_member(name)` deletes the member named `name` from the organization
	- if the member specified is not part of the organization, please raise an error saying so
- `spend_money(amount)` spends `amount` dollars of the organization's money
	- if the organization does not have enough money for the purchase, please raise an error detailing by how much the organization is short 
- `add_money(amount)` adds `amount` dollars to the organization's funds

###PUPPIES

- `buy_puppy(cost)` buys a puppy for `cost` dollars from the organization's funds.
	- if the organization already has a puppy, please raise an error saying so -- only 1 puppy allowed!!
	- if the organziation does not have enough money for the puppy, please raise an error explaining by how much the organization is short
	- please have the default `cost` for a puppy set to $100
	- if the organization is buying a puppy:
		- `@puppy` should be set to `true`
		- the organization will pay for the puppy from its `@money` funds
- `sell_puppy(amount)` sells a puppy for `amount` dollars. 
	- if the organization does not have a puppy to sell, please raise an error!
	- please have the default `amount` set to $50
	- if the organization is selling a puppy:
		- the revenue from the sale should be added to the organization's funds
		- `@puppy` should be set to false

#Part 2: Event Class

Now you are to create an `Event` class, which will describe an organization's event.

##Instance Variables

- `@name` -- the name of the event
- `@description` -- a description of the event
- `@attendees` -- an array of the names of the attendees
- `@start` -- a [DateTime object](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html) representing the start date and time of the event
- `@end` -- a [DateTime object](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html) representing the end date and time of the event

##Methods

- start by defining your `initialize` method
	- all organizations must have a `name`
	- `description` should have a default value of `"My awesome event!"`
	- `attendees` should have a default value of `[]`
	- `start` and `end` should be optional parameters
		- leave them as nil if no datetime is provided
		- you can expect anything passed to either `start` or `end` to be a [DateTime object](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html)
- use the `attr_accessor :var` method to define a complete set of accessor methods
	- see a [complete explanation of `attr_accessor`](https://github.com/yale-stc-developer-curriculum/YEI-STC-Bootcamp-2014/blob/master/lectures/ruby/attr_accessor/README.md) in the lectures repo.
- `add_attendee(name)` adds an attendee named `name` to the event list
- `delete_attendee(name)` deletes the attendee named `name` from the event list

#Part 3: Person Class

In this part, you will define a `Person` class, which will describe a person!

##Instance Variable

- `@name` -- the name of the person
- `@age` -- an integer representing the age of the person
- `@college` -- the person's residential college, if applicable.

##Methods

- start by defining your `initialize` method
	- all people must have a `name`
	- `age` should be an optional parameter
	- `college` should also be an optional parameter
- use the `attr_accessor :var` method to define a complete set of accessor methods
	- see a [complete explanation of `attr_accessor`](https://github.com/yale-stc-developer-curriculum/YEI-STC-Bootcamp-2014/blob/master/lectures/ruby/attr_accessor/README.md) in the lectures repo.

#Part 4: Refactoring

Now it's time to go back and **refactor** our previous code.

- Within the `Organization` class, change the `@members` variable to be an array of `Person` objects.
 	- `add_member(name)` should be updated to add a `Person` object with the `@name` `name` to the `@members` array
 	- `delete_member(name)` should be updated to delete the `Person` object with the `@name` `name` from the `@members` array.
- Within the `Event` class, change the `@attendees` variable to be an array of `Person` objects. 
 	- `add_attendee(name)` should be updated to add a `Person` object with the `@name` `name`
 	- `delete_attendee(name)` should be updated to delete the `Person` object with the `@name` `name` from the `@attendees` array.
- Add an `@events` array to the `Organization` class, which will be a list of `Event` objects.
	- Please define the following additional methods
		- `get_events` returns an organization's events 
			- Challenge 1: only return future events
			- Challenge 2: return the events in chronological order
		- `add_event(event_object_name)` adds the `Event` object named `event_object_name` to the `@events` array
		- `delete_event(event_name)` deletes the `Event` object with the `@name` `event_name` from the `@events` array

