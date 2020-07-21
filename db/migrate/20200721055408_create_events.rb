class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title, null:false
      t.text :detail
      t.date :start_date, null:false
      t.time :start_time, null:false
      t.date :end_date, null:true
      t.time :end_time, null:true
      t.string :place, null:false
      t.bigint :user_id, null:false
      t.bigint :community_id, null:true
      t.boolean :is_private, null:false, default:false

      t.timestamps
    end
  end
end
