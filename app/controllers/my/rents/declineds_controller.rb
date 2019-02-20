class My::Rents::DeclinedsController < ApplicationController
  def create
    rent = Rent.find(params[:rent_id])
    rent.declined!
    redirect_to '/my/rents'
  end
end
