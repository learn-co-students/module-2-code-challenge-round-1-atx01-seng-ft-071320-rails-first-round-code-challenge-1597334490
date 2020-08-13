class HeroinePowersController < ApplicationController

    def new
        @heroine_power = HeroinePower.new
    end

    def create
        @heroine_power = HeroinePower.new(heroine_params)

        if @heroine_power.valid?
            @heroine_power.save
            redirect_to heroine_path(@heroine_power.heroine)
        else
            render new_heroine_power_path
        end
    end

    private
    
    def heroine_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end
end
