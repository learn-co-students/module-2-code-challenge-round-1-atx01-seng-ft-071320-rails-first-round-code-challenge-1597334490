class HeroinePowerController < ApplicationController

  def new
    @heroinepower = Heroinepower.new
  end

  def create
    @heroinepower = HeroinePower.create(heroinepower_params)
  end

  private
  def heroinepower_params
    params.require(:heroinepower).permit(:heroine, :power, :strength)
  end

end
