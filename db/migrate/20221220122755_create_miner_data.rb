class CreateMinerData < ActiveRecord::Migration[7.0]
  def change
    create_table :miner_data do |t|
      t.string :name
      t.integer :fan_percentage

      t.timestamps
    end
  end
end
