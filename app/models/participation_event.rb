class ParticipationEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :purpose, presence: true, length: {maximum: 200}
  validates :achivement, presence: true, length: {maximum: 200}
end
