class BirdsController < ApplicationController
    def index
        @birds = Bird.all

        render json: @birds
    end

    def show
        @birds = Bird.find(params[:id])

        render json: @birds 
    end

    def create
        @birds = Bird.create({name:params[:name]})

        render json: @birds
    end

end
