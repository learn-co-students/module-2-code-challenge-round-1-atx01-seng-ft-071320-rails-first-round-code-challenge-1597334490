class HeroinePowersController < ApplicationController
    def new
        @heroine_power = HeroinePower.new
    end

    def create
      @heroine_power = HeroinePower.create(heroine_power_params)
      @heroine = @heroine_power.heroine
        redirect_to heroine_path(@heroine)
    end

    private

    def heroine_power_params
            params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end

 end
