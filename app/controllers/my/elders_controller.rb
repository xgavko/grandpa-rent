class My::EldersController < ApplicationController
  before_action :set_elder, only: [:show, :edit, :update, :destroy]

  def index
    @elders = Elder.where(user: current_user)
  end

  def new
    @elder = Elder.new
  end

  def create
    @elder = Elder.new(elder_params)
    @elder.user = current_user
    if @elder.save
      redirect_to my_elders_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @elder.update(elder_params)
    redirect_to my_elders_path
  end

  def destroy
    @elder.destroy
    redirect_to my_elders_path
  end

  private

  def set_elder
    @elder = Elder.find(params[:id])
  end

  def elder_params
    params.require(:elder).permit(:full_name, :address, :description, skill_ids: [])
  end
end
