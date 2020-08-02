def create_petservice(service_id, category_id, name, duration, is_add_on)
  Petservice.create!(
    service_id: service_id,
    category_id: category_id,
    name: name,
    duration: duration,
    is_add_on: is_add_on,
    is_custom: false,
    deleted: false
  )
end

create_petservice(1, 1, 'Bath Only', 15, false)
create_petservice(2, 1, 'Bath & Brush', 30, false)
create_petservice(3, 1, 'Bath, Brush & Style', 60, false)
create_petservice(4, 2, 'Mini Groom', 60, false)
create_petservice(5, 2, 'Full Groom', 90, false)
create_petservice(6, 2, 'Elite Groom', 20, false)
create_petservice(7, 3, 'Nail Trim', 15, true)

def create_salonservice(service_id, category_id, name, duration, is_add_on)
  Salonservice.create!(
    service_id: service_id,
    category_id: category_id,
    name: name,
    duration: duration,
    is_add_on: is_add_on,
    is_custom: false,
    deleted: false
  )
end

create_salonservice(1, 1, 'Bang Trim', 15, false)
create_salonservice(2, 1, 'Haircut', 30, false)
create_salonservice(3, 1, 'Cut & Style', 60, false)
create_salonservice(4, 2, 'Highlights', 60, false)
create_salonservice(5, 2, 'Full Color', 90, false)
create_salonservice(6, 2, 'Balayage', 20, false)
create_salonservice(7, 3, 'Shampoo & Dry', 15, true)

puts 'Services created'
