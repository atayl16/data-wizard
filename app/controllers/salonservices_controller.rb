class SalonservicesController < ApplicationController
  before_action :set_salonservice, only: [:show, :edit, :update, :destroy]

  # GET /salonservices
  # GET /salonservices.json
  def index
    @salonservices = Salonservice.all
    respond_to do |format|
      format.html
      format.csv { send_data @salonservices.to_csv, filename: "services.csv" }
    end
  end

  # GET /salonservices/1
  # GET /salonservices/1.json
  def show
  end

  # GET /salonservices/new
  def new
    @salonservice = Salonservice.new
  end

  # GET /salonservices/1/edit
  def edit
  end

  # POST /salonservices
  # POST /salonservices.json
  def create
    @salonservice = Salonservice.new(salonservice_params)

    respond_to do |format|
      if @salonservice.save
        format.html { redirect_to @salonservice, notice: 'Salonservice was successfully created.' }
        format.json { render :show, status: :created, service: @salonservice }
      else
        format.html { render :new }
        format.json { render json: @salonservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salonservices/1
  # PATCH/PUT /salonservices/1.json
  def update
    respond_to do |format|
      if @salonservice.update(salonservice_params)
        format.html { redirect_to @salonservice, notice: 'Salonservice was successfully updated.' }
        format.json { render :show, status: :ok, service: @salonservice }
      else
        format.html { render :edit }
        format.json { render json: @salonservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salonservices/1
  # DELETE /salonservices/1.json
  def destroy
    @salonservice.destroy
    respond_to do |format|
      format.html { redirect_to salonservices_url, notice: 'Salonservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salonservice
      @salonservice = Salonservice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salonservice_params
      params.fetch(:salonservice, {})
    end
end
