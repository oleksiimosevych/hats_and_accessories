class CreateCartItem2s < ActiveRecord::Migration
  def change
    create_table :cart_item2s do |t|
	  t.integer :product_id
      t.integer :cart_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
