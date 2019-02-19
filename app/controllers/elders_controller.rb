class EldersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @elders = Elder.all
  end
end
