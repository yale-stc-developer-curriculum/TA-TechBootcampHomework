require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
   :adapter   => 'sqlite3',
   :database  => 'countries.db'
)

class Country < ActiveRecord::Base
end

class Continent < ActiveRecord::Base
end

Country.connection
Continent.connection