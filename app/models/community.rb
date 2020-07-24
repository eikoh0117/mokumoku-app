class Community < ApplicationRecord
  # has_many :events
  has_many :participation_communities, depentent: :destroy

  belongs_to :user

  validates :user_id, presence: true
  validates :name, presence: true, length: {maximum: 20, minimum: 2}
  validates :introdcution, length: {maximum: 200}

end
