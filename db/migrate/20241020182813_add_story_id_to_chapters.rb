class AddStoryIdToChapters < ActiveRecord::Migration[7.2]
  def change
    add_column :chapters, :story_id, :integer
    add_index :chapters, :story_id
    add_foreign_key :chapters, :stories
  end
end
