class AddsCartIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :cart_id, :integer
  end
end
