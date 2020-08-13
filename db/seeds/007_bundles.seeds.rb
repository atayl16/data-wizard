require 'faker'

locations = 1..3
bundles = 1..3

def create_bundle(bundle_id)
  Bundle.create!(
    bundle_id: bundle_id,
    name: [Faker::Lorem.word.titlecase, bundle_id].join(' '),
    validity_period: 31104000,
    in_membership: false,
    available_online: true
  )
end

def create_bundle_item
  bundle_item_group_ids = 1..5
  bundle_item_group_ids.each do |group|
    BundleItem.create!(
      bundle_item_group_id_items: group,
      resource_type: "Variation",
      resource_id: group
    )
  end
end

def create_bundle_item_group(bundle_id)
  deals = 0..2
  deals.each do |deal|
    BundleItemGroup.create!(
      bundle_item_group_id_groups: deal + bundle_id,
      bundle_id: bundle_id,
      quantity: Faker::Number.between(from: 1, to: 3),
      include_all_skus: false,
      include_all_variations: false,
      include_all_classes: false
    )
  end
end

def create_bundle_prices(location_id)
  bundle_item_group_ids = 1..5
  bundle_item_group_ids.each do |group|
    BundleItemGroupPrice.create!(
      bundle_item_group_id_group_prices: group,
      location_id: location_id,
      price_per_item: Faker::Number.between(from: 10.00, to: 20.00).round(2)
    )
  end
end

bundles.each do |bundle_id|
  create_bundle(bundle_id)
  create_bundle_item_group(bundle_id)
end

create_bundle_item

locations.each do |location_id|
  create_bundle_prices(location_id)
end

puts 'Bundles created'
