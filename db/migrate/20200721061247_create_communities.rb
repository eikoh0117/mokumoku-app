class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.integer :user_id
      t.string :name
      t.text :introduction
      t.boolean :is_private

      t.timestamps
    end
  end
end
