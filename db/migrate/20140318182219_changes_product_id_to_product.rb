class ChangesProductIdToProduct < ActiveRecord::Migration
  def change
    remove_column :items, :ququantity
    add_column :items, :quantity, :integer
    remove_column :items, :product_id
    add_column :items, :product, :integer
    remove_column :items, :cart_id
    add_column :items, :cart, :integer

    remove_column :products, :description
    add_column :products, :description, :text
  end
end
