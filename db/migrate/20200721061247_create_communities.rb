class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.bigint :user_id, null:false
      t.string :name, null:false
      t.text :introduction, null:false
      t.boolean :is_private, null:false, default:false

      t.timestamps
    end
  end
end
