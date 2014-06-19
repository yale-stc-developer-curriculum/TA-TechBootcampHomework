class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
	t.belongs_to :customer
	t.belongs_to :product
	t.timestamps
    end
  end
end
