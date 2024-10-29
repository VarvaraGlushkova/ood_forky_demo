class AddEmailToSubscriptions < ActiveRecord::Migration[7.2]
  def change
    add_column :subscriptions, :email, :string
  end
end
