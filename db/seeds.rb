# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Customer.create(name: "yogi", phone:"9983245",email:"yogi@gamil.com",address:"mysore")
Customer.create(name: "nithi", phone:"9913245",email:"nithi@gamil.com",address:"bangalore")
Customer.create(name: "raki", phone:"9983645",email:"raki@gamil.com",address:"mandya")

Order.create(Order_Number: "001",Date_of_Order:"30/10/2023",Order_Status:"accepted",Billing_Address:"mysore",Shipping_Address:"mysore")
Order.create(Order_Number: "002",Date_of_Order:"25/09/2023",Order_Status:"accepted",Billing_Address:"delhi",Shipping_Address:"delhi")
Order.create(Order_Number: "003",Date_of_Order:"03/03/2023",Order_Status:"rejected",Billing_Address:"mandya",Shipping_Address:"mandya")


Product.create(sku: "SKU123", mrp: 20.0, quantity: 2, discount: 5.0, net_Price: 35.0)
Product.create(sku: "SKU456", mrp: 30.0, quantity: 3, discount: 4.0, net_Price: 40.0)
Product.create(sku: "SKU789", mrp: 40.0, quantity: 4, discount: 8.0, net_Price: 50.0)


Address.create(name: "Home", phone: "123-456-7890", address_line1: "123 Main St",address_line2: "244 Main mt", city: "mysore", state: "karnataka", country: "india", pin: "570028")
Address.create(name: "office", phone: "123-342-7890", address_line1: "near sns",address_line2: "allanahalli", city: "bangalore", state: "karnataka", country: "russia", pin: "570030")
Address.create(name: "park", phone: "123-974-7890", address_line1: "c block",address_line2: "jyouthi nagar", city: "mandya", state: "karnataka", country: "uk", pin: "570093")