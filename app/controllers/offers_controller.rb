class OffersController < ApplicationController
  def index
    if params[:subject].present? && params[:subject].present?
      @offers = Offer.where(subject: params[:subject].downcase, level: params[:level].downcase)
    else
      redirect_to root_path
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:subject, :level, :price, :description)
  end
end
