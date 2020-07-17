class InventoryproductsController < ApplicationController
  before_action :set_inventoryproduct, only: [:show, :edit, :update, :destroy]

  # GET /inventoryproducts
  # GET /inventoryproducts.json
  def index
    @inventoryproducts = Inventoryproduct.all
    @inventoryskus = Inventorysku.all
    @inventorystocks = Inventorystock.all
    respond_to do |format|
      format.html
      format.csv { send_data @inventoryproducts.to_csv, filename: "inventory_products.csv" }
    end
  end

  # GET /inventoryproducts/1
  # GET /inventoryproducts/1.json
  def show
  end

  # GET /inventoryproducts/new
  def new
    @inventoryproduct = Inventoryproduct.new
  end

  # GET /inventoryproducts/1/edit
  def edit
  end

  # POST /inventoryproducts
  # POST /inventoryproducts.json
  def create
    @inventoryproduct = Inventoryproduct.new(inventoryproduct_params)

    respond_to do |format|
      if @inventoryproduct.save
        format.html { redirect_to @inventoryproduct, notice: 'Inventoryproduct was successfully created.' }
        format.json { render :show, status: :created, location: @inventoryproduct }
      else
        format.html { render :new }
        format.json { render json: @inventoryproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventoryproducts/1
  # PATCH/PUT /inventoryproducts/1.json
  def update
    respond_to do |format|
      if @inventoryproduct.update(inventoryproduct_params)
        format.html { redirect_to @inventoryproduct, notice: 'Inventoryproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventoryproduct }
      else
        format.html { render :edit }
        format.json { render json: @inventoryproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventoryproducts/1
  # DELETE /inventoryproducts/1.json
  def destroy
    @inventoryproduct.destroy
    respond_to do |format|
      format.html { redirect_to inventoryproducts_url, notice: 'Inventoryproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventoryproduct
      @inventoryproduct = Inventoryproduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventoryproduct_params
      params.require(:inventoryproduct).permit(:product_id, :name, :brand, :category, :vendor, :description, :visible_to_clients, :commissionable, :discontinued, :discontinued_reasons, :alternative_product_ids, :deleted)
    end
end
