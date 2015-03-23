class AddCreatedAtBooks < ActiveRecord::Migration
  def change
  	add_column :books, :created_at, :datetime
  end
end
