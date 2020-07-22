class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :events
  # has_many :communities
  # has_many :participation_events
  # has_many :participation_communities
end
