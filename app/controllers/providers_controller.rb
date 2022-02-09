class ProvidersController < ApplicationController
    before_action :authenticate
    before_action :set_entry, only: [:show, :update, :destroy]
    rescue_from Exception do |e|
        render json: { error: e }, status: :not_found
    end 

    def index
        render json: Provider.all
    end

    def create
        render json: Provider.create(entry_params), status: :created
    end

    def show
        render json: @provider
    end

    def update
        if @provider.update(entry_params)
            render json: @provider
        else 
            render json: { error: "Failed to update provider" }, status: :unprocessable_entity
        end
    end

    def destroy
        if @provider.destroy
            render status: :no_content
        else 
            render json: { error: "Failed to destroy provider" }, status: :unprocessable_entity
        end
    end

    private

    def set_entry
        @provider = Provider.find(params[:id])
    end

    def entry_params
        params.permit(:name)
    end
   
end


