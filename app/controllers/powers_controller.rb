class PowersController < ApplicationController
  before_action :get_that_power, only:[:show]

  def index
    @powers = Power.all
  end

  def show 
  end


  

  private

  def get_that_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :heroine_ids)
  end

end
