class SaloncategoriesController < ApplicationController
  before_action :set_saloncategory, only: [:show, :edit, :update, :destroy]

  # GET /saloncategories
  # GET /saloncategories.json
  def index
    @saloncategories = Saloncategory.all
    respond_to do |format|
      format.html
      format.csv { send_data @saloncategories.to_csv, filename: "categories.csv" }
    end
  end

  # GET /saloncategories/1
  # GET /saloncategories/1.json
  def show
  end

  # GET /saloncategories/new
  def new
    @saloncategory = Saloncategory.new
  end

  # GET /saloncategories/1/edit
  def edit
  end

  # POST /saloncategories
  # POST /saloncategories.json
  def create
    @saloncategory = Saloncategory.new(saloncategory_params)

    respond_to do |format|
      if @saloncategory.save
        format.html { redirect_to @saloncategory, notice: 'Saloncategory was successfully created.' }
        format.json { render :show, status: :created, location: @saloncategory }
      else
        format.html { render :new }
        format.json { render json: @saloncategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saloncategories/1
  # PATCH/PUT /saloncategories/1.json
  def update
    respond_to do |format|
      if @saloncategory.update(saloncategory_params)
        format.html { redirect_to @saloncategory, notice: 'Saloncategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @saloncategory }
      else
        format.html { render :edit }
        format.json { render json: @saloncategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saloncategories/1
  # DELETE /saloncategories/1.json
  def destroy
    @saloncategory.destroy
    respond_to do |format|
      format.html { redirect_to saloncategories_url, notice: 'Saloncategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saloncategory
      @saloncategory = Saloncategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saloncategory_params
      params.require(:saloncategory).permit(:category_id, :name, :online, :deleted)
    end
end
