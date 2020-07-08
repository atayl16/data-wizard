class PetservicesController < ApplicationController
  before_action :set_petservice, only: [:show, :edit, :update, :destroy]

  # GET /petservices
  # GET /petservices.json
  def index
    @petservices = Petservice.all
    respond_to do |format|
      format.html
      format.csv { send_data @petservices.to_csv, filename: "services.csv" }
    end
  end

  # GET /petservices/1
  # GET /petservices/1.json
  def show
  end

  # GET /petservices/new
  def new
    @petservice = Petservice.new
  end

  # GET /petservices/1/edit
  def edit
  end

  # POST /petservices
  # POST /petservices.json
  def create
    @petservice = Petservice.new(petservice_params)

    respond_to do |format|
      if @petservice.save
        format.html { redirect_to @petservice, notice: 'Petservice was successfully created.' }
        format.json { render :show, status: :created, location: @petservice }
      else
        format.html { render :new }
        format.json { render json: @petservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petservices/1
  # PATCH/PUT /petservices/1.json
  def update
    respond_to do |format|
      if @petservice.update(petservice_params)
        format.html { redirect_to @petservice, notice: 'Petservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @petservice }
      else
        format.html { render :edit }
        format.json { render json: @petservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petservices/1
  # DELETE /petservices/1.json
  def destroy
    @petservice.destroy
    respond_to do |format|
      format.html { redirect_to petservices_url, notice: 'Petservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petservice
      @petservice = Petservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def petservice_params
      params.fetch(:petservice, {})
    end
end
