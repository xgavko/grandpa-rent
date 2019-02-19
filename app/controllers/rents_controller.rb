class RentsController < ApplicationController

  def new
    @elder = Elder.find(params[:elder_id])
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.elder = Elder.find(params[:elder_id])
    @rent.user = current_user
    if @rent.save
      redirect_to rents_path
    else
      render :show
    end
  end

  def rent_params
    params.require(:rent).permit(:start_date, :end_date)
  end
end
