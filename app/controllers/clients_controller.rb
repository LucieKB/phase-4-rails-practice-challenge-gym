class ClientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def show
        client = Client.find(params[:id])
        render json: client, status: :ok
    end

    private

    def render_not_found_response
        render json: "Client not found.", status: :not_found 
    end

end
