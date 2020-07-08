class PetcategoriesController < ApplicationController
  before_action :set_petcategory, only: [:show, :edit, :update, :destroy]

  # GET /petcategories
  # GET /petcategories.json
  def index
    @petcategories = Petcategory.all
    @petservices = Petservice.all
    @salonpricings = Salonpricing.all
    respond_to do |format|
      format.html
      format.csv { send_data @petcategories.to_csv, filename: "categories.csv" }
    end
  end

  # GET /petcategories/1
  # GET /petcategories/1.json
  def show
  end

  # GET /petcategories/new
  def new
    @petcategory = Petcategory.new
  end

  # GET /petcategories/1/edit
  def edit
  end

  # POST /petcategories
  # POST /petcategories.json
  def create
    @petcategory = Petcategory.new(petcategory_params)

    respond_to do |format|
      if @petcategory.save
        format.html { redirect_to @petcategory, notice: 'Petcategory was successfully created.' }
        format.json { render :show, status: :created, location: @petcategory }
      else
        format.html { render :new }
        format.json { render json: @petcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petcategories/1
  # PATCH/PUT /petcategories/1.json
  def update
    respond_to do |format|
      if @petcategory.update(petcategory_params)
        format.html { redirect_to @petcategory, notice: 'Petcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @petcategory }
      else
        format.html { render :edit }
        format.json { render json: @petcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petcategories/1
  # DELETE /petcategories/1.json
  def destroy
    @petcategory.destroy
    respond_to do |format|
      format.html { redirect_to petcategories_url, notice: 'Petcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petcategory
      @petcategory = Petcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def petcategory_params
      params.fetch(:petcategory, {})
    end
end
