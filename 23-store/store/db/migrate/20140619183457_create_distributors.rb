class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
	t.string :name
	t.string :location
      t.timestamps
    end
  end
end
