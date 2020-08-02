def create_petcategory(id, name)
  Petcategory.create!(
    category_id: id,
    name: name,
    online: true,
    deleted: false
  )
end

create_petcategory(1, 'Bath & Brush')
create_petcategory(2, 'Dog Grooming')
create_petcategory(3, 'Add-Ons')

def create_saloncategory(id, name)
  Saloncategory.create!(
    category_id: id,
    name: name,
    online: true,
    deleted: false
  )
end

create_saloncategory(1, 'Haircuts')
create_saloncategory(2, 'Color')
create_saloncategory(3, 'Add-Ons')

puts 'Categories created'
