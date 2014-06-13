#DRANKS

![shining](http://i.imgur.com/xhukfHP.jpg)

- Unless otherwise specified, all classes in this assignment should have a full set of `attr_accessor` methods. 
- Parameters marked with a ** are required paramters. These parameters must be specified during initialization or given non-empty default values (maybe a default price, just for convenience).
- Optional parameters should still be initialized during the object's `initialize` method. 
	- they can be initialized as `0`, `[]` or whatever....
		- (just have `0`, `[]` or whatever as a default value)

##Part 1: The Drinks

###Alcohol / Mixers

1. Start by defining a `Alcohol` class. This is the top-level class for all alcoholic drinks.
	- it should have the following attributes
		- `name` **
		- `taste`
		- `origin`
		- `price` ** -- per ounce price
		- `quantity_left` **
		- `abv` -- alcohol by volume 
	- please define the following method:
		- `use_drink(quantity)` -- subtracts the quantity used from the `quantity_left`.
			- please raise an error if there is not enough left in the bottle to make the drink.

2. Next you're going to want to define a `Mixer` class. Sometimes it's nice to mix something with your alcohol.
	- `name` **
	- `quantity_left` **
	- `price` ** -- per ounce price

###Beer / Wine / Liquor

Please define three classes: `Beer`, `Wine`, and `Liquor`, all of which should inherit from your `Alcohol` class.

- `Beer` should have the following attributes:
	- `packaging_type` -- bottle or can?
	- `shotgunnable?`
	- `dark?`
- `Wine` should have the following attributes:
	- `red_white_rose`
	- `box?`
	- `age`
- `Liquor` should have the following attributes:
	- `compatible_mixers` -- an array of `Mixer` object ids compatible with the `Liquor`.
	- `bottle_size`
	- `proof` -- twice the `abv` of the liquor
		- there shouldn't be a `proof` `attr_writer` method -- it is a calculated value.

- `Liquor` should also have an `add_compatible_mixer(mixer_id)` method and a `remove_compatible_mixer(mixer_id)` method.

###Liquor

Define the following sub-classes, all of which should inherit from your `Liquor` class: `Vodka`, `Whiskey`, and `Rum`

- `Vodka` should have the following attributes:
	- `grain`
	- `dubra?`
	- `unleaded_gasoline?`
- `Whiskey` should have the following attributes:
	- `age`
	- `type`
- `Rum` should have the following attributes:
	- `variety` -- silver, gold, spiced, dark?
	- `on_a_pirate_ship?`

## Part 2: Cocktails

![lebowski](http://i.imgur.com/lS1VzEJ.jpg?1)

Define a `Cocktail` class, with the following attributes:

- `name` **
- `size` ** -- in fluid ounces
- `total_price` -- a value calculated from the cost of the drinks in the recipe, the portion of each drink used, and the size of the cocktail
	- there shouldn't be a `total_price` `attr_writer` method -- it is a calculated value.
- `recipe` ** -- this stores the combination of alcohol needed to produce the drink
	- `recipe` should be an array of hashes
	- each hash should have 
		- an `object_id` key with the object id of the drink needed in the mix
		- a `portion` -- a float between `0` and `1` storing what portion of the cocktail is made up of this specific drink

##Part 3: The Bar

![tron bar](http://i.imgur.com/0NuwCIL.jpg?1)

1. Define a `Bar` class with the following attributes:
	- `name` **
	- `location`
	- `drinks_available` -- an array of `Alcohol` objects and `Mixer` objects the `Bar` has available
2. The `Bar` should have an `add_drink(drink_id)` method to add a drink to the `drinks_available` array

##Part 4: The Customer

![chance](http://i.imgur.com/Q0a5eJp.jpg)

1. Define a `Customer` class with the following attributes:
	- `name` **
	- `age`
	- `gender`
	- `weight`
	- `bar` -- a `Bar` object where the `Customer` is buying his/her drinks
	- `favorite_drink` -- the customer's favorite cocktail
	- `bac` -- 1 drink increases your `bac` by 0.04
		- this is a calculated value. there should not be a `attr_writer` method.
	- `drinks` -- an array of recent drinks
		- this is a calculated value. there should not be a `attr_writer` method.
	- `total_drinks` -- an integer representing the true number of total drinkns the `Customer` has consumed.
		- this is a calculated value. there should not be a `attr_writer` method.
	- `funds`
2. Time to write some methods.
- We are practicing **test-driven development**. First you are to **write RSpec tests** for the following methods. Please write these tests in a `spec/customer_spec.rb` file.
- Now go ahead and define the following methods:
	- `add_funds(amount)` and `spend_money(amount)` -- defined as you did in the `Organization` class.
	- `order_drink(name)` orders a drink with `@name` `name`
		- this method should handle `Alcohol` orders, `Mixer` orders, and `Cocktail` orders.
	- `order_drink(name)` should:
		- add the drink to the customer's `drink` array
		- if the drink is alcoholic, add 1 to `total_drinks`
		- subtract the drink's cost from the customer's funds
			- raise an error if the customer doesn't have enough money left
		- subtract the drink's `size` from that bottle's `quantity_left`
			- you can use your `use_drink(quantity)` method from the `Alcohol` class.
		- call your `how_drunk?` method
		- call your `forget_drinks` method
	- `how_drunk?` -- based on the `Customer`'s `bac` return the following results:
		- 0.00 - 0.05 => "happy"
		- 0.05 - 0.08 => "giggly"
		- 0.08 - 0.15 => "goofy"
		- 0.15 - 0.20 => "class clown"
		- 0.20 - 0.25 => "drunk"
		- 0.25 - 0.35 => "turn down"
		- 0.35 - 0.50 => "sunglasses and advil"
		- 0.50+ => "dead"
	- `forget_drinks` -- under the influence of alcohol, our `Customer`s forget the number of drinks they have consumed.
		- make it so the user only remember his/her last `@total_drinks - ( 1.5 * e^((10.0 * @bac) - 1.0) ).floor` drinks by removing the appropriate number of elements from the drink history array
		- after 0.20 BAC, everything tastes good, so make any truthy `unleaded_gasoline` values falsified
		- after 0.20 BAC, you are now on a pirate ship, so make `on_a_pirate_ship?` truthy

##Part 5: BONUS

![jack sparrow](http://i.imgur.com/ii7ofTE.png)

1. In the `Customer` class's `order_drink(name)` method, check whether the `Bar` has those drinks available in sufficient quantities
2. Calculate the `bac` based on the `Customer`'s `weight` and the amount of alcohol consumed.

