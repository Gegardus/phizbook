class AddUniquePairToFriendship < ActiveRecord::Migration[7.0]
  def change
    add_index :friendships, [:sent_to_id, :sent_by_id], :unique => true
  end
end
