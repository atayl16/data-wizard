class CustomfieldsController < ApplicationController
  def index
    @customfields = Customfield.all
  end
end
