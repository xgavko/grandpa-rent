class EldersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @elders = Elder.where.not(latitude: nil, longitude: nil)

    @markers = @elders.map do |elder|
      {
        lng: elder.longitude,
        lat: elder.latitude
      }
    end
  end

  def show
    @elder = Elder.find(params[:id])
    @rent = Rent.new
  end
end
