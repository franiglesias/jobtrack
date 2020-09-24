class EventsController < ApplicationController
  def create
    @application = Application.find(params[:application_id])
    @event = @application.events.create(event_params)
    redirect_to applications_path(@application)
  end

  private

  def event_params
    params.require(:event).permit(:event, :date, :notes)
  end
end
