class InventoryskusController < ApplicationController
  def index
    @inventoryskus = Inventorysku.all
  end
end
