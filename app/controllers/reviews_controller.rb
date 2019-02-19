class ReviewsController < ApplicationController
  def new
    @rent = Rent.find(params[:rent_id])
  end

  def create
    @rent = Rent.find(params[:rent_id])
    @rent.update(review_params)
    if @rent.save
      redirect_to rents_path
    else
      render :new
    end
  end

  private

  def review_params
    # TODO : Update this
    params.require(:rent).permit(:review, :rating)
  end
end
