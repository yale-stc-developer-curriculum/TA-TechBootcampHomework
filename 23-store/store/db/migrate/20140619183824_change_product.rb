class ChangeProduct < ActiveRecord::Migration
  def change
	 reversible do |dir|
      	change_table :products do |t|
        	t.belongs_to :distributor
      	end
    end
  end
end
