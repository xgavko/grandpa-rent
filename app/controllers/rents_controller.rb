class RentsController < ApplicationController

  def index
    @rents = Rent.where(user: current_user)
  end
end
