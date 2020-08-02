class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.paginate(page: params[:page], :per_page => 5).order('service_id ASC')
  end
end
