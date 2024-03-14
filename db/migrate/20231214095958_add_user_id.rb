class AddUserId < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    add_column :miner_data, :user_id, :integer, null: false
    add_index :miner_data, :user_id, algorithm: :concurrently
  end
end
