class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.paginate(page: params[:page], :per_page => 5).order('service_id ASC')
  end

  def export
    @appointments = Appointment.all
      respond_to do |format|
        format.csv { send_data @appointments.to_csv, filename: "appointments.csv" }
      end
  end

  def export_services
    @appointments = Appointment.order("service_id")
      respond_to do |format|
        format.csv { send_data @appointments.to_csv_services, filename: "appointment_services.csv" }
      end
  end

  def export_statuses
    @appointments = Appointment.all
      respond_to do |format|
        format.csv { send_data @appointments.to_csv_statuses, filename: "appointment_statuses.csv" }
      end
  end

  def export_tickets
    @appointments = Appointment.all
      respond_to do |format|
        format.csv { send_data @appointments.to_csv_tickets, filename: "tickets.csv" }
      end
  end

  def export_skus
    @appointments = Appointment.all
      respond_to do |format|
        format.csv { send_data @appointments.to_csv_skus, filename: "ticketsskuitems.csv" }
      end
  end

  def export_ticketservices
    @appointments = Appointment.all
      respond_to do |format|
        format.csv { send_data @appointments.to_csv_services, filename: "ticketsserviceitems.csv" }
      end
  end

  def export_tips
    @appointments = Appointment.all
      respond_to do |format|
        format.csv { send_data @appointments.to_csv_tips, filename: "tips.csv" }
      end
  end

  def export_payments
    @appointments = Appointment.all
      respond_to do |format|
        format.csv { send_data @appointments.to_csv_payments, filename: "ticketspaymentitems.csv" }
      end
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:appointment_id, :location_id, :employee_id, :client_id, :child_id, :notes, :start_time, :end_time, :service_id, :price, :duration, :status, :change_time)
    end
end
