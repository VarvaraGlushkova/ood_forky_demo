class CreateStories < ActiveRecord::Migration[7.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :cover
      t.string :annotation
      t.boolean :is_public

      t.timestamps
    end
  end
end
