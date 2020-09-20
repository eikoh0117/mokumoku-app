class EventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :detail, :start_time, :end_time, :place, :hostname, :start_time_for_display, :end_time_for_display #, :community_id, :is_private, :tag_names, :participation_users_name

  # has_many :participation_events
  # has_many :tag_events

  belongs_to :user
  # belongs_to :community

  def hostname
    host = User.find_by(id: object.user_id)
    return host.name
  end

  def tag_names
    tag_ids = object.tag_events.pluck(:tag_id)
    return Tag.where(id: tag_ids).pluck(:name)
  end

  def participation_users_name
    user_ids = object.participation_events.pluck(:user_id)
    return User.where(id: user_ids).pluck(:name)
  end

  def start_time_for_display
    date = "#{object.start_time.month}月#{object.start_time.day}日"
    if object.start_time.hour.to_s.length == 1
      time = "#{object.start_time.to_s[12, 1]}:#{object.start_time.to_s[14, 2]}"
    else
      time = "#{object.start_time.to_s[11, 2]}:#{object.start_time.to_s[14, 2]}"
    end
    date_and_time = "#{date} #{time}"
    return date_and_time
  end

  def end_time_for_display
    date = "#{object.end_time.month}月#{object.end_time.day}日"
    if object.end_time.hour.to_s.length == 1
      time = "#{object.end_time.to_s[12, 1]}:#{object.end_time.to_s[14, 2]}"
    else
      time = "#{object.end_time.to_s[11, 2]}:#{object.end_time.to_s[14, 2]}"
    end
    date_and_time = "#{date} #{time}"
    return date_and_time
  end

end
