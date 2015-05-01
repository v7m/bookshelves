class RemoveReadedFromBooks < ActiveRecord::Migration
  def change
  	remove_column :books, :readed, :boolean
  end
end
