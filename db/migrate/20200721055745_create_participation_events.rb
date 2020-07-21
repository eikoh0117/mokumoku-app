class CreateParticipationEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :participation_events do |t|
      t.bigint :event_id
      t.bigint :user_id
      t.text :purpose
      t.text :achivement

      t.timestamps
    end
  end
end
