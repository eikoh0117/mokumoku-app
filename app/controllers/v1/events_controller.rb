class V1::EventsController < ApplicationController
  def index
    events = Event.includes(:user)
    render json: events
  end

  def create
    event = Event.new(event_params)
    if event.save
      participation_event = ParticipationEvent.new(event_id: event.id, user_id: event.user_id)
      render json: event, status: :created if participation_event.save!
    else
      render json: event.errors, status: :unprocessable_entity
    end
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      render json: event, status: :accepted
    else
      render json: event.errors, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    render json: event if event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :detail, :start_time, :end_time, :place, :community_id, :user_id, :is_private)
  end
end
