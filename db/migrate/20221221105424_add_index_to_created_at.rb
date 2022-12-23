class AddIndexToCreatedAt < ActiveRecord::Migration[7.0]
  def change
    add_index :miner_data, :created_at
  end
end
