class RemoveDistributor < ActiveRecord::Migration
  def change
drop_table :distributors
  end
end
