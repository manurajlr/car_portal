class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.belongs_to :make, index: true
      t.string :name
    end
  end
end
