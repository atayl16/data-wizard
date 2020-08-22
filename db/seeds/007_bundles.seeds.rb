require 'faker'

locations = 1..3
bundles = 1..3

def create_bundle(bundle_id)
  word1 = %w[Awesome Amazing Super Spectacular Fantastic]
  word2 = %w[Deal Package Bundle Special Extravaganza]
  Bundle.create!(
    bundle_id: bundle_id,
    name: [word1.sample, word2.sample, bundle_id].join(' '),
    validity_period: 31_104_000,
    in_membership: false,
    available_online: true
  )
end

def create_bundle_item
  bundle_item_group_ids = 1..5
  bundle_item_group_ids.each do |group|
    BundleItem.create!(
      bundle_item_group_id: group,
      resource_type: 'Variation',
      resource_id: group
    )
  end
end

def create_bundle_item_group(bundle_id)
  deals = 0..2
  deals.each do |deal|
    BundleItemGroup.create!(
      bundle_item_group_id: deal + bundle_id,
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
      bundle_item_group_id: group,
      location_id: location_id,
      price_per_item: Faker::Number.between(from: 10.0, to: 20.0).round(2)
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
