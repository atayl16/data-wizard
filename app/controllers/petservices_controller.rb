class PetservicesController < ApplicationController
  def index
    @petservices = Petservice.all
  end
end
