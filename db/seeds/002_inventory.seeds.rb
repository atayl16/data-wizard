require 'faker'

locations = [1, 2, 3]

20.times do
  p = Inventoryproduct.new
  p.product_id = Faker::Number.unique.between(from: 1, to: 20)
  p.name = Faker::Commerce.product_name
  p.brand = Faker::Science.element
  p.category = Faker::Commerce.department(max: 1)
  p.vendor = Faker::Company.name
  p.description = Faker::Lorem.paragraph(sentence_count: 0, random_sentences_to_add: 2)
  p.visible_to_clients = Faker::Boolean.boolean(true_ratio: 0.9)
  p.commissionable = Faker::Boolean.boolean(true_ratio: 0.9)
  p.discontinued = Faker::Boolean.boolean(true_ratio: 0.01)
  p.deleted = false
  p.save
end

skus = []
100.times do
  s = Inventorysku.new
  s.sku_id = Faker::Number.unique.between(from: 1, to: 101)
  s.product_id = Faker::Number.between(from: 1, to: 20)
  s.name = Faker::Commerce.color.titleize
  s.number = Faker::Number.unique.leading_zero_number(digits: 5)
  s.barcode = Faker::Alphanumeric.unique.alphanumeric(number: 10, min_numeric: 9)
  s.target_quantity = Faker::Number.between(from: 20, to: 100)
  s.alert_threshold = Faker::Number.between(from: 0, to: 10)
  s.deleted = false
  s.save
  skus << s
end

def create_stocks(location_id)
  skus = 1..101
  skus.each do |i|
    c = Inventorystock.new
    c.sku_id = i
    c.location_id = location_id
    c.quantity = Faker::Number.between(from: 0, to: 10)
    c.price = Faker::Commerce.price(range: 15..50.0)
    c.cost = Faker::Commerce.price(range: 1..15.0)
    c.vendor = Faker::Company.name
    c.deleted = false
    c.save
  end
end

locations.each do |location_id|
  create_stocks(location_id)
end

puts 'Inventory created'
