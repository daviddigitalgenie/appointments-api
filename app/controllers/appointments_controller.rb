class AppointmentsController < ApplicationController
    before_action :authenticate
    before_action :set_entry, only: [:show, :update, :destroy]
    rescue_from Exception do |e|
        render json: { error: e }, status: :not_found
    end 

    def index
        render json: Appointment.all
    end

    def create
        render json: Appointment.create(entry_params), status: :created
    end

    def show
        render json: @appointment
    end

    def update
        if @appointment.update(entry_params)
            render json: @appointment
        else 
            render json: { error: "Failed to update appointment" }, status: :unprocessable_entity
        end
    end

    def destroy
        if @appointment.destroy
            render status: :no_content
        else 
            render json: { error: "Failed to destroy appointment" }, status: :unprocessable_entity
        end
    end

    private

    def set_entry
        @appointment = Appointment.find(params[:id])
    end

    def entry_params
        params.permit(:date, :provider_id, :patient)
    end
   
end


