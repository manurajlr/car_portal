class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    t.belongs_to :model, index: true
    t.string :version_name
	  t.string :stock
	  t.string :seating_capacity
    end
  end
end
