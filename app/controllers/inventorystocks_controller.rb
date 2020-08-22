class InventorystocksController < ApplicationController
  def index
    @inventorystocks = Inventorystock.all.order('location_id ASC')
  end
end
