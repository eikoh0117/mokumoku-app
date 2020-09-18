class CommunitySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :introduction, :is_private

  has_many :participation_communities
  has_many :events

  belongs_to :user
end
