class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.belongs_to :product
    	t.belongs_to :customer
      t.timestamps
    end
  end
end
