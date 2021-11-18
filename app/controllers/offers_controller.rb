class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:subject].present? && params[:level].present?
      @offers = Offer.where(subject: params[:subject].downcase, level: params[:level].downcase)
    else
      redirect_to root_path
    end
  end

  def new
    @offer = Offer.new
    @appointment = Appointment.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @start_time = DateTime.parse(params[:start_date])
    @start_time += params[:hours].to_i.hours
    @end_time = @start_time + params[:duration].to_i.minutes
    if @offer.save
      # TODO: check if appointment is valid
      @appointment = Appointment.new(start_time: @start_time, end_time: @end_time, offer_id: @offer.id)
      return redirect_to root_path if appointment.save
    end
    render :new
  end

  private

  def offer_params
    params.require(:offer).permit(:subject, :level, :price, :description)
  end
end
