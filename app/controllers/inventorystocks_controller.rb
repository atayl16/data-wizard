class InventorystocksController < ApplicationController
  before_action :set_inventorystock, only: [:show, :edit, :update, :destroy]

  # GET /inventorystocks
  # GET /inventorystocks.json
  def index
    @inventorystocks = Inventorystock.all.order('location_id ASC')
    respond_to do |format|
      format.html
      format.csv { send_data @inventorystocks.to_csv, filename: "inventory_stocks.csv" }
    end
  end

  # GET /inventorystocks/1
  # GET /inventorystocks/1.json
  def show
  end

  # GET /inventorystocks/new
  def new
    @inventorystock = Inventorystock.new
  end

  # GET /inventorystocks/1/edit
  def edit
  end

  # POST /inventorystocks
  # POST /inventorystocks.json
  def create
    @inventorystock = Inventorystock.new(inventorystock_params)

    respond_to do |format|
      if @inventorystock.save
        format.html { redirect_to @inventorystock, notice: 'Inventorystock was successfully created.' }
        format.json { render :show, status: :created, location: @inventorystock }
      else
        format.html { render :new }
        format.json { render json: @inventorystock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventorystocks/1
  # PATCH/PUT /inventorystocks/1.json
  def update
    respond_to do |format|
      if @inventorystock.update(inventorystock_params)
        format.html { redirect_to @inventorystock, notice: 'Inventorystock was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventorystock }
      else
        format.html { render :edit }
        format.json { render json: @inventorystock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventorystocks/1
  # DELETE /inventorystocks/1.json
  def destroy
    @inventorystock.destroy
    respond_to do |format|
      format.html { redirect_to inventorystocks_url, notice: 'Inventorystock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventorystock
      @inventorystock = Inventorystock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventorystock_params
      params.require(:inventorystock).permit(:sku_id, :location_id, :quantity, :price, :cost, :vendor, :expiration_date, :stock_type, :deleted)
    end
end
