class EldersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @elders = Elder.all
  end


  def show
    @elder = Elder.find(params[:id])
    @rent = Rent.new
  end
end
