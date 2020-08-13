class HeroinePowersController < ApplicationController
  
    def new
      @heroines=Heroine.all
      @powers=Power.all
    end
  
  end