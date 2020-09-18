class V1::ParticipationEventsController < ApplicationController
  def create
    participation_event = ParticipationEvent.new(participation_event_params)
    if participation_event.save!
      render json: participation_event, status: :created
    else
      render json: participation_event.errors, status: :unprocessable_entity
    end
  end
  def destroy
    user = User.find(params[:user_id])
    event = Event.find(params[:id])
    participation_event = ParticipationEvent.find_by(event_id: event.id, user_id: user.id)
    if participation_event.destroy
      render json: participation_event
    end
  end
  def index
    if params[:uid]
      participation_events = ParticipationEvent.where(user_id: params[:uid])
      render json: participation_events
    end
  end

  private
  def participation_event_params
    params.require(:participation_event).permit(:user_id, :event_id)
  end
end
