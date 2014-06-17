#Where in the World is Active Record?
We've hidden several clues in our database which will lead you to a passphrase you should know by tomorrow morning. We've provided the Ruby code to give you access to the following tables in the database:

- Continent
- Country

To interact with these tables, simply open irb in your terminal and run `load 'search.rb'`. The tables can be accessed like so:

```> Country.all```  
```=> a list of country records that I'm not going to paste here 'cause it's long and messy```
```> Country.first```  
```=> whatever the first country in the table is```

So the tables are represented as the classes `Continent` and `Country`. The methods we've included in the cheatsheet below can be called on these classes to list and find entries.

Each clue will be preceded and followed by two asterisks, like so: `**clue**`. Each clue will provide information about the location of the next clue. The last location will contain the passphrase.

**Your first clue is the value of the slug field of the country Monaco.**

##Active Record Cheatsheet

| Command       | What it does      | Example  |
| ------------- |:-------------| :--------|
| `all`      | Gets all records in the table | `Country.all` |
| `column_names` | Gets all the field names in the table | `Country.column_names` |
| `find`      | Gets first record in table that matches the given id | `Country.find(1)` |
| `find_by`      | Gets first record in table that matches the given key-value pair |   `Country.find_by name: "United States"` or `Country.find_by(name: "United States")` |
| `first`      | Gets the first record in the table ordered by the primary key | `Country.first` |
| `last`      | Gets the last record in the table ordered by the primary key | `Country.last` |
| `order`      | Orders a list of records by the given field and in the given order (either `:asc` or `:desc`) | `Country.all.order(name: :desc)` |
| `select`      | Displays only the given field(s) of the records |   `Country.all.select(:name)` |
| `take`      | Gets all records in the table up to a limit (or same as `first` if given no argument) | `Country.take(5)` |
| `where`      | Gets all records that match the given values in the table | `Country.where(continent_id: 3)` or `Country.where(continent_id: (1..4))` (this will get all records for which the `continent_id` is in the range `(1..4)`) or `Country.where(continent_id: [1,3,5])` (this will get all record for which the `continent_id` is in the array `[1,3,5]`) or `Country.where('continent_id < 4')` |
| `where.not`      | Gets all records that don't match the given values in the table | `Country.where.not(continent_id: 3)` |