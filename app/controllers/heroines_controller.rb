class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroinePower = HeroinePower.new
    @heroine = Heroine.new
    @heroines = Heroine.all
    @powers = Power.all

  end

  def create
    
    @heroine = HeroinePower.create(heroine_params)
    @powers = Power.all
    @heroines = Heroine.all

    @heroine.save
    redirect_to heroine_path(@heroine.id)

  end

private
  def heroine_params
    params.require(:heroine).permit(:super_name, :power)
  end
  

end
