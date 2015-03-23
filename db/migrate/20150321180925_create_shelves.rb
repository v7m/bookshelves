class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
    	t.string :name, null: false
    end
  end
end
