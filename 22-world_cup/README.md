#Active Record
You'll be interacting with the soccer (i.e., football) database Charlie demoed for y'all. Y'all. Y'all y'all. Y'all? Y'all. Below is a quick cheatsheet of the commands Charlie showed you (and then some).

##Active Record Cheatsheet

| Command       | What it does      | Example  |
| ------------- |:-------------| :--------|
| `all`      | Gets all records in the table | `Country.all` |
| `column_names` | Gets all the field names in the table | `Country.column_names` |
| `count` | Returns the number of records in the relation | `Country.count` |
| `create` | Creates and saves a new record in the table with the given values | `Country.create name: "Charlieland", pop: 1234567, code: "CHL"` |
| `destroy` | Removes a record from the table | `Country.find_by(name: "Canada").destroy` |
| `find`      | Gets first record in table that matches the given id | `Country.find(1)` |
| `find_by`      | Gets first record in table that matches the given key-value pair |   `Country.find_by name: "United States"` or `Country.find_by(name: "United States")` |
| `first`      | Gets the first record in the table ordered by the primary key | `Country.first` |
| `last`      | Gets the last record in the table ordered by the primary key | `Country.last` |
| `order`      | Orders a list of records by the given field and in the given order (either `:asc` or `:desc`) | `Country.all.order(name: :desc)` |
| `save`      | Saves the record to the table | `charlieland.save` (this assumes `charlieland` is defined) |
| `select`      | Displays only the given field(s) of the records |   `Country.all.select(:name)` |
| `take`      | Gets all records in the table up to a limit (or same as `first` if given no argument) | `Country.take(5)` |
| `update`      | Updates the given fields of the record (shorthand for reassigning the fields and then saving) | `charlieland.update(name: "Marcusland")` (this assumes `charlieland` is defined) |
| `update_all`      | Bulk updates all the given records | `Country.all.update_all(name: "Jasonland")` |
| `where`      | Gets all records that match the given values in the table | `Country.where(continent_id: 3)` or `Country.where(continent_id: (1..4))` (this will get all records for which the `continent_id` is in the range `(1..4)`) or `Country.where(continent_id: [1,3,5])` (this will get all record for which the `continent_id` is in the array `[1,3,5]`) or `Country.where('continent_id < 4')` |
| `where.not`      | Gets all records that don't match the given values in the table | `Country.where.not(continent_id: 3)` |

##More Stuff You Should Know

- Y'all'll (i.e., you'll) have access to three tables from the database:
   1. `Country`
   2. `Continent`
   3. `Event`
   4. `Team`

##Tasks

For each task that modifies the database, try to check that you were successful.

1. Find all countries with a `continent_id` of `4`. This should return countries in South America.
2. Now take the countries from task 1 and display only their `name` field.
3. Find all national teams.
4. Find the number of teams whose country id is less than 30.
5. Update all the teams in the `Teams` table from the United States so they're not club teams and they're national teams instead. Also, change their names to `'Murica`. 'Cause 'Murica. Y'all.
6. List the continents in descending order with respect to their names. Display only their name and id fields. And don't ask me why 'Caribbean' and 'Pacific' are continents...
7. List the events in ascending order with respect to start time and display only their keys and their start times.
8. List all the column names in the Team table.
9. Find all teams with a country id between or equal to 28 and 41 and update their codes to "LOL".
10. Since none of the teams have addresses, let's change all their addresses to "17 Hillhouse".
11. Make your own country! You're going to have to fill in lots of fields.
12. Now find all countries whose names are not the same as the name of your new country and update their names to "Womp". Womp.
13. Finally, destroy all the countries whose name is "Womp".
13. Done!