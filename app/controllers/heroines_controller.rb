class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    find_heroine
  end

private
  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

end
