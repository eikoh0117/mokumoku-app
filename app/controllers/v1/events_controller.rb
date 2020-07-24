class V1::EventsController < ApplicationController
    def index
      events = Event.select(:id, :title, :detail, :start_date, :start_time, :end_date, :end_time, :place, :user_id)
      render json: events
    end
    def create
      event = Event.new(event_params)
      if event.save!
        render json: event, status: :created
      else
        render json: event.errors, status: :unprocessable_entity
      end
    end

    def destroy
        event = event.find(params[:id])
        if event.destroy
            render json: event
        end
    end

    private
      def event_params
        params.require(:event).permit(:title, :detail, :start_date, :start_time, :end_date, :end_time, :place, :community_id, :user_id, :is_private)
      end
end
