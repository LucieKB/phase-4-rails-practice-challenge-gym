class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        byebug
        gym = find_gym
        render json: gym, include status: :ok
    end

    def destroy
        # byebug
        gym = find_gym
        gym.destroy
        render json: {}
    end



    private

    def find_gym
        gym=Gym.find(params[:id])
    end

    def render_not_found_response
        render json: "Gym not found.", status: :not_found 
    end

end
