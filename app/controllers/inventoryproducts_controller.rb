class InventoryproductsController < ApplicationController
  def index
    @inventoryproducts = Inventoryproduct.all
    @inventoryskus = Inventorysku.all
    @inventorystocks = Inventorystock.all
  end
end
