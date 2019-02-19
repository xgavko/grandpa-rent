class My::RentsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end
end
