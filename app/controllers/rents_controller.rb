class RentsController < ApplicationController

  def new
    @elder = Elder.find(params[:elder_id])
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.elder = Elder.find(params[:elder_id])
    if @rent.save
      redirect_to elder_path(params[:elder_id])
    else
      render :new
    end
  end

end
