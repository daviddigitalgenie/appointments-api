class AppointmentsController < ApplicationController
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
        render json: Appointment.find(params[:id])
    end

    def update
        appointmentToUpdate = Appointment.find(params[:id])
        if appointmentToUpdate.update(entry_params)
            render json: appointmentToUpdate
        else 
            render json: { error: "Failed to update appointment" }, status: :unprocessable_entity
        end
    end

    def destroy
        appointmentToDestroy = Appointment.find(params[:id])
        if appointmentToDestroy.destroy
            render status: :ok
        else 
            render json: { error: "Failed to destroy appointment" }, status: :unprocessable_entity
        end
    end

    private

    def entry_params
        params.permit(:date, :provider_id, :patient)
    end
   
end


