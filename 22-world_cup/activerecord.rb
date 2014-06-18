require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
   :adapter   => 'sqlite3',
   :database  => 'football.db'
)

class Country < ActiveRecord::Base
end

class Event < ActiveRecord::Base
end

class Team < ActiveRecord::Base
end

class Continent < ActiveRecord::Base
end

Country.connection
Event.connection
Team.connection
Continent.connection