class V1::ParticipationEventsController < ApplicationController
  def create
    participation_event = ParticipationEvent.new(participation_event_params)
    if participation_event.save!
      render json: participation_event, status: :created
    else
      render json: participation_event.errors, status: :unprocessable_entity
    end
  end

  private
  def participation_event_params
    params.require(:participation_event).permit(:user_id, :event_id)
  end
end
