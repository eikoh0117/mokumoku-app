class CreateTagEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_events do |t|
      t.integer :tag_id
      t.integer :event_id

      t.timestamps
    end
  end
end
