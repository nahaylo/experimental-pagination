class AddUserId < ActiveRecord::Migration[7.0]
  def change
    add_column :miner_data, :user_id, :integer, null: false, index: true
  end
end
