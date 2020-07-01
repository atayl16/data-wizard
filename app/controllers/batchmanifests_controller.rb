class BatchmanifestsController < ApplicationController
  before_action :set_batchmanifest, only: [:show, :edit, :update, :destroy]

  # GET /batchmanifests
  # GET /batchmanifests.json
  def index
    @batchmanifests = Batchmanifest.all
    respond_to do |format|
      format.html
      format.csv { send_data @batchmanifests.to_csv, filename: "batch_manifest-#{Date.today}.csv" }
    end
  end

  # GET /batchmanifests/1
  # GET /batchmanifests/1.json
  def show
  end

  # GET /batchmanifests/new
  def new
    @batchmanifest = Batchmanifest.new
  end

  # GET /batchmanifests/1/edit
  def edit
  end

  # POST /batchmanifests
  # POST /batchmanifests.json
  def create
    @batchmanifest = Batchmanifest.new(batchmanifest_params)

    respond_to do |format|
      if @batchmanifest.save
        format.html { redirect_to @batchmanifest, notice: 'Batchmanifest was successfully created.' }
        format.json { render :show, status: :created, location: @batchmanifest }
      else
        format.html { render :new }
        format.json { render json: @batchmanifest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batchmanifests/1
  # PATCH/PUT /batchmanifests/1.json
  def update
    respond_to do |format|
      if @batchmanifest.update(batchmanifest_params)
        format.html { redirect_to @batchmanifest, notice: 'Batchmanifest was successfully updated.' }
        format.json { render :show, status: :ok, location: @batchmanifest }
      else
        format.html { render :edit }
        format.json { render json: @batchmanifest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batchmanifests/1
  # DELETE /batchmanifests/1.json
  def destroy
    @batchmanifest.destroy
    respond_to do |format|
      format.html { redirect_to batchmanifests_url, notice: 'Batchmanifest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batchmanifest
      @batchmanifest = Batchmanifest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def batchmanifest_params
      params.require(:batchmanifest).permit(:filename, :filetype)
    end
end
