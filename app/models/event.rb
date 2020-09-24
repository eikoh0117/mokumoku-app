class Event < ApplicationRecord
  has_many :participation_events, dependent: :destroy
  has_many :tag_events, dependent: :destroy

  belongs_to :user
  # belongs_to :community

  validates :title, presence: true, length: {maximum: 20, minimum: 1}
  validates :detail, length: {maximum: 200}
  validates :start_time, presence: true
  validates :place, presence: true, length: {maximum: 100}
  validates :user_id, presence: true

end
