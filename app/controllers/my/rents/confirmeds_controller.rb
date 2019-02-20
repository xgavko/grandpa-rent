class My::Rents::ConfirmedsController < ApplicationController
  def create
    rent = Rent.find(params[:rent_id])
    rent.confirmed!
    redirect_to '/my/rents'
  end
end
