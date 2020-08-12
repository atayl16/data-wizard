class ClientsController < ApplicationController
  def index
    @clients = Client.paginate(page: params[:page], :per_page => 5)
    @customfields = Customfield.all
  end
end
