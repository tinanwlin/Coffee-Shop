class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.integer :item_price_cents
      t.integer :total_price_cents
      t.integer :order_id
      t.integer :product_id

      t.timestamps
    end
  end
end
