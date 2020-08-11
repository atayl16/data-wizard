class SalonservicesController < ApplicationController
  def index
    @salonservices = Salonservice.all
    respond_to do |format|
      format.html
      format.csv { send_data @salonservices.to_csv_salonservices, filename: "services.csv" }
    end
  end
end
