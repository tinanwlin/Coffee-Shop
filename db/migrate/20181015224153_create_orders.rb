class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.integer :total_cents
      t.integer :user_id

      t.timestamps
    end
  end
end
