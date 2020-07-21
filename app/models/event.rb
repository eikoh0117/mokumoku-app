class Event < ApplicationRecord
  has_many :participation_events, dependent: :destroy
  has_many :tag_events, dependent: :destroy

  belongs_to :user
  belongs_to :community

  validates :title, presence: true, length: {maximum: 20, minimum: 2}
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :place, presence: true
  validates :user_id, presence: true

end
