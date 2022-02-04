class AppointmentsController < ApplicationController
    rescue_from Exception do |e|
        render json: { error: e }, status: 404
    end 

    def index
        render json: Appointment.all
    end

    def create
        Appointment.create(entry_params)
    end

    def show
        render json: Appointment.find(params[:id])
    end

    def update
        appointmentToUpdate = Appointment.find(params[:id])
        appointmentToUpdate.update(entry_params)
    end

    def destroy
        appointmentToDestroy = Appointment.find(params[:id])
        appointmentToDestroy.destroy()
    end
    
    private

    def entry_params
        params.permit(:date, :provider_id, :patient)
    end
   
end


