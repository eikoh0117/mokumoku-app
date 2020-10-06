class CreateParticipationEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :participation_events do |t|
      t.bigint :event_id, null: false
      t.bigint :user_id, null: false
      t.text :purpose
      t.text :achivement

      t.timestamps
    end
  end
end
