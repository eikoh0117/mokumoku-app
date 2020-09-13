class V1::EventsController < ApplicationController
  def index
    # events = Event.select(:id, :title, :detail, :start_time, :end_time, :place, :user_id)
    events = Event.includes(:user)
    render json: events
  end
  def create
    event = Event.new(event_params)
    if event.save!
      participation_event = ParticipationEvent.new(event_id: event.id, user_id: event.user_id)
      if participation_event.save!
        render json: event, status: :created
      end
    else
      render json: event.errors, status: :unprocessable_entity
    end
  end

  def destroy
      event = Event.find(params[:id])
      if event.destroy
          render json: event
      end
  end

  private
  def event_params
    params.require(:event).permit(:title, :detail, :start_time, :end_time, :place, :community_id, :user_id, :is_private)
  end
end
