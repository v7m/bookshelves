class AddUserIdToShelves < ActiveRecord::Migration
  def change
  	add_column :shelves, :user_id, :integer
  end
end
