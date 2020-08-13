class HeroinePowersController < ApplicationController

    def index
        @heroine_powers = HeroinePower.all
      end
    
      def show 
      @heroine_power = HeroinePower.find(params[:id])
      end
    

def new
@heroine_power = HeroinePower.new
end

def create 
HeroinePower.create(:heroine_id, :power_id)
redirect_to heroine_power_path(heroine_power)
end
end