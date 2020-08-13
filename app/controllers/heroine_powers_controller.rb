class HeroinePowersController < ApplicationController

    def index
    end

    def new
        @heroine_power = HeroinePower.new
    end

    def create
        @heroine_power = HeroinePower.new(heroine_power_params)
        @heroine_power.save
        redirect_to heroine_power_path(@heroine_power[:id])
    end

    def show
        find_heroine_power
    end

    # def edit
    #     find_heroine_power
    # end

    # def update
    #     find_heroine_power
    #     @heroine_power.update(heroine_power_params)
    #     @heroine_power.save




private

    def find_heroine_power
        @heroine_power = HeroinePower.find(params[:id])
    end

    def heroine_power_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end

end
