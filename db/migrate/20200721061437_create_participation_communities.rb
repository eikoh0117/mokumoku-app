class CreateParticipationCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :participation_communities do |t|
      t.integer :user_id
      t.integer :community_id

      t.timestamps
    end
  end
end
