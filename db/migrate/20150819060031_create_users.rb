class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :name
        t.string :make
        t.string :model
        t.string :version
    end
  end
end
