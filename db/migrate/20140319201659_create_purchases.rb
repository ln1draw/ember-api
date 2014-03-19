class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.string :email
      t.integer :credit_card_number
      t.integer :cvv
      t.integer :expiration
      t.string :address
      t.integer :zip

      t.timestamps
    end
  end
end
