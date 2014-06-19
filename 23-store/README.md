#Your Store

From scratch, you are to create a database for a webstore.

1. First you're going to want to create a new rails app: `rails new store`
2. Change into that directory: `cd store`
3. To generate a new model for the customer, you can run `rails generate model Customer`.  This creates:
  1. a migration file in `db/migrate`
    1. See [RailsGuides: Active Record Migrations](http://guides.rubyonrails.org/migrations.html) for help with migrations
  2. a model class in `app/models`
    1. See section 3 of [RailsGuides: Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html) for help with models.
4. When you want to execute the migration, run `rake db:migrate`
5. Use rails console to check your work / play with the database (using RubyLand Active Record!!!): just run `rails console`

It should have the following tables:

`customers` is a table with the following attributes:

1. `name`
2. `age`

- each customer has many orders
- each customer has many products, through orders

`orders` is your join table!!

- an order belongs to a customer
- an order also belongs to a product

`products` is a table with the following attributes:

1. `name`
2. `price`

- each product has many orders
- each product has many customers, through orders
