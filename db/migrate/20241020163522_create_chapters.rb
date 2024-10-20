class CreateChapters < ActiveRecord::Migration[7.2]
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :chapter_body
      t.integer :place
      t.boolean :is_public

      t.timestamps
    end
  end
end
