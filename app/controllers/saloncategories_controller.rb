class SaloncategoriesController < ApplicationController

  def index
    @saloncategories = Saloncategory.all
    @salonservices = Salonservice.all
    @salonpricings = Salonpricing.all
    respond_to do |format|
      format.html
      format.csv { send_data @saloncategories.to_csv_saloncategories, filename: "categories.csv" }
    end
  end
end
