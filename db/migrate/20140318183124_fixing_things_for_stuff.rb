class FixingThingsForStuff < ActiveRecord::Migration
  def change
    remove_column :items, :cart
    add_column :items, :cart_id, :integer
    remove_column :items, :product
    add_column :items, :product_id, :integer
  end
end
