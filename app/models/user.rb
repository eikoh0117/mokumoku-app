class User < ApplicationRecord
  has_many :events, dependent: :destroy
  has_many :participation_events, dependent: :destroy
  has_many :communities, dependent: :restrict_with_error
  has_many :participation_communities, dependent: :destroy

  validates :name, presence: true, length: {maximum: 10, minimum: 2}
  validates :email, presence: true
  validates :uid, presence: true
end
