#Your Store

From scratch, you are to create a database with the following tables and associations:

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
