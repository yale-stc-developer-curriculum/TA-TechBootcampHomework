class Product < ActiveRecord::Base
	has_many :orders
	has_many :customers, through: :orders
end
