class AddStatusAtBooks < ActiveRecord::Migration
  def change
  	add_column :books, :status, :integer, default: 0, null: false
  end
end
