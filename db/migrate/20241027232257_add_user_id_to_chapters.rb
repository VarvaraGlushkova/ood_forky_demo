class AddUserIdToChapters < ActiveRecord::Migration[7.2]
  def change
    add_column :chapters, :user_id, :integer
  end
end
