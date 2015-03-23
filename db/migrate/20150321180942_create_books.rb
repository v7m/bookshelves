class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :title, null: false
    	t.string :author, null: false
    	t.integer :year
    	t.boolean :readed, default: false
    	t.integer :shelf_id, null: false
    end
  end
end
