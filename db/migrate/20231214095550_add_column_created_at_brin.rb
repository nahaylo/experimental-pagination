class AddColumnCreatedAtBrin < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    add_column :miner_data, :created_at_brin, :datetime, null: false
    add_index :miner_data, :created_at_brin, using: :brin
  end
end
