class HeroinePowersController < ApplicationController
    
    def new 
        @heroine_power = HeroinePower.new
    end

    def create 
        @heroine_power = HeroinePower.new(heroine_power_params)
        if @heroine_power.save
            redirect_to heroine_path(@heroine_power.heroine)
        else
            render :new 
        end
    end

    private
    def heroine_power_params
        params.require(:heroine_power).permit(:strength, :power_id, :heroine_id)
    end
end
