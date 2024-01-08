class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :mrp
      t.string :quantity
      t.string :discount
      t.string :net_Price

      t.timestamps
    end
  end
end
