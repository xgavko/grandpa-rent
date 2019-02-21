class EldersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
layout 'layout_home', :only => [:index]
  def index
    if params[:query].present?
      @elders = Elder.near(params[:query], 15)
    else
      @elders = Elder.where.not(latitude: nil, longitude: nil)
    end

    @markers = @elders.map do |elder|
      { lng: elder.longitude, lat: elder.latitude }
    end
  end

  def show
    @elder = Elder.find(params[:id])
    @rent = Rent.new
  end
end
