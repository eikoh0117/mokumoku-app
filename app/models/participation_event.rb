class ParticipationEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :purpose, length: { maximum: 200 }
  validates :achivement, length: { maximum: 200 }
end
