class CustomfieldsController < ApplicationController
  def index
    @customfields = Customfield.all
    respond_to do |format|
      format.html
      format.csv { send_data @customfields.to_csv, filename: "customfields.csv" }
    end
  end

  def new
    @customfield = Customfield.new
  end

  # GET /customfields/1/edit
  def edit
  end

  # POST /customfields
  # POST /customfields.json
  def create
    @customfield = Customfield.new(customfield_params)

    respond_to do |format|
      if @customfield.save
        format.html { redirect_to @customfield, notice: 'Customfield was successfully created.' }
        format.json { render :show, status: :created, location: @customfield }
      else
        format.html { render :new }
        format.json { render json: @customfield.errors, status: :unprocessable_entity }
      end
    end
  end
end
