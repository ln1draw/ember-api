class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :product_id
      t.integer :ququantity
      t.integer :item_price
      t.integer :cart_id

      t.timestamps
    end
  end
end
