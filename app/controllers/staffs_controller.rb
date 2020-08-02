class StaffsController < ApplicationController
  def index
    @staffs = Staff.order("location_id")
  end
end
