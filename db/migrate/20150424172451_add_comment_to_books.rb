class AddCommentToBooks < ActiveRecord::Migration

  def up
  	add_column :books, :comment, :string, default: ""
  end

  def down
  	remove_column :books, :comment, :string, default: ""
  end

end
