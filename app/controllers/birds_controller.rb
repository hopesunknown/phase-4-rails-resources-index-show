class BirdsController < ApplicationController

    def index
        birds = Bird.all
        render json: birds
    end

    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: {error: "No bird found"}, status: :not_found
        end
    end
end
