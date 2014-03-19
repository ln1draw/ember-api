class SwitchingFromProductIdToProductBecauseEmberIsDumb < ActiveRecord::Migration
  def change
    remove_column :items, :product_id
    add_column :items, :product, :integer
    remove_column :items, :cart_id
    add_column :items, :cart, :integer
  end
end
