#Organizations

Your assignment is to create a class for Yale student organizations.

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
