class CreateForks < ActiveRecord::Migration[7.2]
  def change
    create_table :forks do |t|
      t.references :Story, null: false, foreign_key: true
      t.references :Chapter, null: false, foreign_key: true
      t.integer :place

      t.timestamps
    end
  end
end
