class EventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :detail, :start_date, :start_time, :end_date, :end_time, :place, :community_id, :is_private, :tag_names, :participation_users_name

  has_many :participation_events
  has_many :tag_events

  belongs_to :user
  # belongs_to :community

  def tag_names
    tag_ids = object.tag_events.pluck(:tag_id)
    return Tag.where(id: tag_ids).pluck(:name)
  end

  def participation_users_name
    user_ids = object.participation_events.pluck(:user_id)
    return User.where(id: user_ids).pluck(:name)
  end
end
