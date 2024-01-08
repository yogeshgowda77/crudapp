class Address < ApplicationRecord
  has_one :customer
  has_many :orders_Billing, class_name: 'Order', foreign_key: 'Billing_Address_id'
  has_many :orders_Shipping, class_name: 'Order', foreign_key: 'Shipping_Address_id'
end
