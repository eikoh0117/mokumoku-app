class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :detail
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.string :place
      t.bigint :user_id
      t.bigint :community_id
      t.boolean :is_private, default:false

      t.timestamps
    end
  end
end
