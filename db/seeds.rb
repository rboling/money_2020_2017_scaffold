# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# customer = Customer.create(first_name: 'Taylor', last_name: 'Swift', phone_number: '6302207435', synchrony_account_num: '1337')
# sku = Sku.create(name: 'Neil Lane Classic Diamond Long Chain Set in Platinum', synchrony_sku: 'item-1234', price: 100000)
# purchase = Purchase.create(customer: customer, purchase_date: Date.parse('13/10/2017'))
# sku.purchases << purchase
# sku.save!
sku = Sku.create(name: 'Shelby AC Cobra', synchrony_sku: 'item-1337')

