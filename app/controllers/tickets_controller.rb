class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.paginate(page: params[:page], :per_page => 5)
  end

  def export
    @tickets = Ticket.all
      respond_to do |format|
        format.csv { send_data @tickets.to_csv, filename: "tickets.csv" }
      end
  end

  def export_skus
    @tickets = Ticket.all
      respond_to do |format|
        format.csv { send_data @tickets.to_csv_skus, filename: "ticketsskuitems.csv" }
      end
  end

  def export_services
    @tickets = Ticket.all
      respond_to do |format|
        format.csv { send_data @tickets.to_csv_services, filename: "ticketsserviceitems.csv" }
      end
  end

  def export_tips
    @tickets = Ticket.all
      respond_to do |format|
        format.csv { send_data @tickets.to_csv_tips, filename: "tips.csv" }
      end
  end

  def export_payments
    @tickets = Ticket.all
      respond_to do |format|
        format.csv { send_data @tickets.to_csv_payments, filename: "ticketspaymentitems.csv" }
      end
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:ticket_id, :location_id, :client_id, :status, :employee_id, :closed_by_employee_id, :closed_at, :deleted, :payment_item_id, :type, :inventory_sku_id, :quantity, :amount_before_discount, :service_id, :appointment_id, :amount)
    end
end
