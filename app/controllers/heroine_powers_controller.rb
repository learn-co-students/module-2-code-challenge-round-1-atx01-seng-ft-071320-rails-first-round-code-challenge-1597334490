class HeroinePowersController < ApplicationController
    before_action :find_heroine_power, only: [:show]
    def index
      
    end

    def show 

    end 

    def new 
        
        @heroine_power=HeroinePower.new
    end 

    def create 
        @heroine_power=HeroinePower.new(heroine_power_params)
        if @heroine_power.valid? 
            @heroine_power.save 
            redirect_to heroine_path(id: @heroine_power.heroine_id)
        else 
            render :new 
        end 
    end 


    private 
        def find_heroine_power
            @heroine_power=HeroinePower.find(params[:id])
        end 

        def heroine_power_params
            params.require(:heroine_power).permit(:strength, :heroine_id, :power_id)
        end 
  end
  