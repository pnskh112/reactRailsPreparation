class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :total_price, null: false, default: 0
      # t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
