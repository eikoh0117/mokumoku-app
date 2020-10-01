class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email #, :user_participation_events

  # has_many :events
  # has_many :communities
  # has_many :participation_events
  # has_many :participation_communities

  # def user_participation_events
  #   user_events = object.participation_events.pluck(:event_id)
  #   events = Event.where(id: user_events)
  #   return events
  # end

  # def user_participation_events_ids
  #   user_events = object.participation_events.pluck(:event_id)
  #   events = Event.where(id: user_events)
  #   return events.pluck(:id)
  # end
end
