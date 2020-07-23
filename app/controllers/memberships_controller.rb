class MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :edit, :update, :destroy]

  # GET /memberships
  # GET /memberships.json
  def index
    @memberships = Membership.all
  end

  def export
    @memberships = Membership.all
      respond_to do |format|
        format.csv { send_data @memberships.to_csv, filename: "memberships.csv" }
      end
  end

  def export_locations
    @memberships = Membership.all
      respond_to do |format|
        format.csv { send_data @memberships.to_csv_locations, filename: "membership_locations.csv" }
      end
  end

  def export_benefits
    @memberships = Membership.all
      respond_to do |format|
        format.csv { send_data @memberships.to_csv_benefits, filename: "membership_benefits.csv" }
      end
  end

  def export_services
    @memberships = Membership.all
      respond_to do |format|
        format.csv { send_data @memberships.to_csv_services, filename: "benefit_services.csv" }
      end
  end

  def export_products
    @memberships = Membership.all
      respond_to do |format|
        format.csv { send_data @memberships.to_csv_products, filename: "benefit_products.csv" }
      end
  end
  # GET /memberships/1
  # GET /memberships/1.json
  def show
  end

  # GET /memberships/new
  def new
    @membership = Membership.new
  end

  # GET /memberships/1/edit
  def edit
  end

  # POST /memberships
  # POST /memberships.json
  def create
    @membership = Membership.new(membership_params)

    respond_to do |format|
      if @membership.save
        format.html { redirect_to @membership, notice: 'Membership was successfully created.' }
        format.json { render :show, status: :created, location: @membership }
      else
        format.html { render :new }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memberships/1
  # PATCH/PUT /memberships/1.json
  def update
    respond_to do |format|
      if @membership.update(membership_params)
        format.html { redirect_to @membership, notice: 'Membership was successfully updated.' }
        format.json { render :show, status: :ok, location: @membership }
      else
        format.html { render :edit }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memberships/1
  # DELETE /memberships/1.json
  def destroy
    @membership.destroy
    respond_to do |format|
      format.html { redirect_to memberships_url, notice: 'Membership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership
      @membership = Membership.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def membership_params
      params.require(:membership).permit(:membership_id, :membership_name, :description, :registration_fee_amount, :cancellation_fee_amount, :price, :period_size, :period_type, :billing_cycle_type, :billing_day, :payment_type, :location_id, :benefit_id, :benefit_type, :benefit_discount_type, :benefit_value, :benefit_limit, :eligible_for_all_services, :eligible_for_all_products, :benefit_name, :service_id, :product_id)
    end
end
