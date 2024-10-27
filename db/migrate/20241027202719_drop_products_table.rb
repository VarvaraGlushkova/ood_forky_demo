class DropProductsTable < ActiveRecord::Migration[7.2]
  def change
    def up
      drop_table :users
    end

    def down
      fail ActiveRecord::IrreversibleMigration
    end
  end
end
