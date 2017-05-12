class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to appearance_path(@appearance)
    else
      redirect_to new_appearance_path
    end
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    @appearance.update(appearance_params)
    redirect_to appearance_path(@appearance)
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating, :user_id)
  end

end
