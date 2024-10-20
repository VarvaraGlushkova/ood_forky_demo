class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.boolean :is_admin
      t.string :user_name
      t.string :bio
      t.string :avatar
      t.string :mail
      t.boolean :is_mail_public
      t.string :phone
      t.boolean :is_phone_piblic
      t.references :Chapter, null: false, foreign_key: true
      t.references :Story, null: false, foreign_key: true
      t.references :Collection, null: false, foreign_key: true
      t.references :Subs, null: false, foreign_key: true
      t.references :Like, null: false, foreign_key: true
      t.references :Comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
