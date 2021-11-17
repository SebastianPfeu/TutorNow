class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user: current_user)
  end
end
