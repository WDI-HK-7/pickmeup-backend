class AddPostmanToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :postman_id, :integer
  end

  def down
    remove_column :posts, :postman_id
  end
end
