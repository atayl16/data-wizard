class InventoryskusController < ApplicationController
  before_action :set_inventorysku, only: [:show, :edit, :update, :destroy]

  # GET /inventoryskus
  # GET /inventoryskus.json
  def index
    @inventoryskus = Inventorysku.all
    respond_to do |format|
      format.html
      format.csv { send_data @inventoryskus.to_csv, filename: "inventory_skus.csv" }
    end
  end

  # GET /inventoryskus/1
  # GET /inventoryskus/1.json
  def show
  end

  # GET /inventoryskus/new
  def new
    @inventorysku = Inventorysku.new
  end

  # GET /inventoryskus/1/edit
  def edit
  end

  # POST /inventoryskus
  # POST /inventoryskus.json
  def create
    @inventorysku = Inventorysku.new(inventorysku_params)

    respond_to do |format|
      if @inventorysku.save
        format.html { redirect_to @inventorysku, notice: 'Inventorysku was successfully created.' }
        format.json { render :show, status: :created, location: @inventorysku }
      else
        format.html { render :new }
        format.json { render json: @inventorysku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventoryskus/1
  # PATCH/PUT /inventoryskus/1.json
  def update
    respond_to do |format|
      if @inventorysku.update(inventorysku_params)
        format.html { redirect_to @inventorysku, notice: 'Inventorysku was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventorysku }
      else
        format.html { render :edit }
        format.json { render json: @inventorysku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventoryskus/1
  # DELETE /inventoryskus/1.json
  def destroy
    @inventorysku.destroy
    respond_to do |format|
      format.html { redirect_to inventoryskus_url, notice: 'Inventorysku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventorysku
      @inventorysku = Inventorysku.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventorysku_params
      params.require(:inventorysku).permit(:sku_id, :product_id, :name, :number, :barcode, :target_quantity, :alert_threshold, :deleted)
    end
end
