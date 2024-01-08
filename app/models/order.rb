class Order < ApplicationRecord
    belongs_to :customer
    has_many :products, dependent: :destroy
    belongs_to :Billing_Address, class_name: 'Address', optional: true
    belongs_to :Shipping_Address, class_name: 'Address', optional: true
  
    accepts_nested_attributes_for :products
    accepts_nested_attributes_for :Billing_Address
    accepts_nested_attributes_for :Shipping_Address
end
