

class HeroinePowersController < ApplicationController

  def new
    @heroine_power = HeroinePower.new
  end

  def create
    # binding.pry
    @heroine_power = HeroinePower.new(heroine_power_params)
    # binding.pry
    if @heroine_power.valid?
      @heroine_power.save
      redirect_to heroine_path(Heroine.find(heroine_power_params[:heroine_id]))
    else
      render :new
    end
  end

  private
  def heroine_power_params
    params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
  end

end
