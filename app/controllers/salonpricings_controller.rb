class SalonpricingsController < ApplicationController
  before_action :set_salonpricing, only: [:show, :edit, :update, :destroy]

  # GET /salonpricings
  # GET /salonpricings.json
  def index
    @salonpricings = Salonpricing.all
    respond_to do |format|
      format.html
      format.csv { send_data @salonpricings.to_csv, filename: "pricings.csv" }
    end
  end

  # GET /salonpricings/1
  # GET /salonpricings/1.json
  def show
  end

  # GET /salonpricings/new
  def new
    @salonpricing = Salonpricing.new
  end

  # GET /salonpricings/1/edit
  def edit
  end

  # POST /salonpricings
  # POST /salonpricings.json
  def create
    @salonpricing = Salonpricing.new(salonpricing_params)

    respond_to do |format|
      if @salonpricing.save
        format.html { redirect_to @salonpricing, notice: 'Salonpricing was successfully created.' }
        format.json { render :show, status: :created, location: @salonpricing }
      else
        format.html { render :new }
        format.json { render json: @salonpricing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salonpricings/1
  # PATCH/PUT /salonpricings/1.json
  def update
    respond_to do |format|
      if @salonpricing.update(salonpricing_params)
        format.html { redirect_to @salonpricing, notice: 'Salonpricing was successfully updated.' }
        format.json { render :show, status: :ok, location: @salonpricing }
      else
        format.html { render :edit }
        format.json { render json: @salonpricing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salonpricings/1
  # DELETE /salonpricings/1.json
  def destroy
    @salonpricing.destroy
    respond_to do |format|
      format.html { redirect_to salonpricings_url, notice: 'Salonpricing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salonpricing
      @salonpricing = Salonpricing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salonpricing_params
      params.require(:salonpricing).permit(:service_id, :location_id, :employee_id, :price, :deleted)
    end
end
