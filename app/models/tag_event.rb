class TagEvent < ApplicationRecord
  belongs_to :event
  belongs_to :tag

  validates :event_id, presence: true
  validates :tag_id, presence: true
end
