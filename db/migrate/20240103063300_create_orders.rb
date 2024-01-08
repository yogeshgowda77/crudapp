class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :Order_Number
      t.string :Date_of_Order
      t.string :Order_Status
      t.string :Billing_Address
      t.string :Shipping_Address

      t.timestamps
    end
  end
end
