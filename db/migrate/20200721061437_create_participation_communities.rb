class CreateParticipationCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :participation_communities do |t|
      t.bigint :user_id, null:false
      t.bigint :community_id, null:false

      t.timestamps
    end
  end
end
