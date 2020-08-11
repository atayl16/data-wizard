class SalonpricingsController < ApplicationController
  def index
    @salonpricings = Salonpricing.all
    respond_to do |format|
      format.html
      format.csv { send_data @salonpricings.to_csv_pricings, filename: "pricings.csv" }
    end
  end
end
