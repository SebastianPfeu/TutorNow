class AppointmentsController < ApplicationController
  def index
    @student_appointments = current_user.student_appointments.sort_by(&:start_time).reject { |a| a.start_time < DateTime.now }
    @tutor_appointments = current_user.tutor_appointments.sort_by(&:start_time).reject { |a| a.start_time < DateTime.now }
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @free_appointments = @offer.appointments.where(user_id: nil)
  end

  def create
    @appointment = Appointment.find(params[:id])
    @appointment.user = current_user
    if @appointment.save
      redirect_to my_appointments_path
    else
      render :new
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.user = nil
    @appointment.save
    redirect_to my_appointments_path
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to my_appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time)
  end
end
