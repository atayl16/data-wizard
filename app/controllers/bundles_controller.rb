class BundlesController < ApplicationController
  def index
    @bundles = Bundle.all
    @bundle_items = BundleItem.all
    @bundle_item_groups = BundleItemGroup.all
    @bundle_item_group_prices = BundleItemGroupPrice.all
  end
end
