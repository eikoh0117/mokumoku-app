class CreateTagEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_events do |t|
      t.bigint :tag_id
      t.bigint :event_id

      t.timestamps
    end
  end
end
