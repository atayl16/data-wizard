locations = [1, 2, 3]

def create_pricing(service_id, location_id, price)
  Salonpricing.create!(
    service_id: 1,
    location_id: 1,
    employee_id: nil,
    price: 12,
    deleted: false
  )
end

locations.each do |location_id|
  create_pricing(1, location_id, 12)
  create_pricing(2, location_id, 32.50)
  create_pricing(3, location_id, 45)
  create_pricing(4, location_id, 49.99)
  create_pricing(5, location_id, 80)
  create_pricing(6, location_id, 99.99)
  create_pricing(7, location_id, 15)
end

puts 'Pricing created'
