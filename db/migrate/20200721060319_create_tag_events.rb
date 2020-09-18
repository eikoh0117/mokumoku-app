class CreateTagEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_events do |t|
      t.bigint :tag_id, null:false
      t.bigint :event_id, null:false

      t.timestamps
    end
  end
end
