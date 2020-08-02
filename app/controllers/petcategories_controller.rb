class PetcategoriesController < ApplicationController
  def index
    @petcategories = Petcategory.all
    @petservices = Petservice.all
    @salonpricings = Salonpricing.all
  end
end
