class RenameCommentAtBooks < ActiveRecord::Migration
  def up
  	rename_column :books, :comment, :description
  end

  def down
  	rename_column :books, :description, :comment
  end
end
