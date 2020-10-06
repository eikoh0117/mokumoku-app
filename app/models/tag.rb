class Tag < ApplicationRecord
  has_many :tag_events, dependent: :destroy

  validates :name, presence: true, length: { maximum: 10 }
end
