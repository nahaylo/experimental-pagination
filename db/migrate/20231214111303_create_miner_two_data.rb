class CreateMinerTwoData < ActiveRecord::Migration[7.0]
  # disable_ddl_transaction!

  def up
    execute <<-SQL
      CREATE TABLE miner_two_data (
        id bigserial NOT NULL,
        name varchar NULL,
        fan_percentage int4 NULL,
        created_at timestamp(6) NOT NULL,
        updated_at timestamp(6) NOT NULL,
        created_at_brin timestamp(6) NOT NULL,
        user_id int4 NOT NULL,
        CONSTRAINT miner_two_data_id_created_at_unique UNIQUE (id, created_at)
      ) PARTITION BY RANGE (created_at);
    SQL

    # create_table :miner_two_data, id: :bigserial, force: :cascade, partitioned: :true do |t|
    #   t.string :name
    #   t.integer :fan_percentage
    #   t.datetime :created_at_brin, null: false
    #   t.integer :user_id, null: false

    #   t.timestamps

    #   t.index [:id, :created_at], unique: true, name: 'miner_two_data_id_created_at_unique'
    # end

    2016.upto(2023) do |year|
      1.upto(12) do |month|
        date = Date.parse("#{year}-#{month}-01")

        month = date.beginning_of_month
        year = date.year

        next_month = date.next_month
        next_month_year = next_month.year
        next_month_first_day = next_month.beginning_of_month

        execute <<-SQL
          CREATE TABLE miner_two_data_#{year}_#{date.month.to_s.rjust(2, '0')} PARTITION OF miner_two_data
          FOR VALUES FROM ('#{month}') TO ('#{next_month_first_day}');
        SQL
      end
    end

    # Optionally, create an index on the master table for better performance
    add_index :miner_two_data, :created_at#, algorithm: :concurrently
    add_index :miner_two_data, :created_at_brin, using: :brin#, algorithm: :concurrently
    add_index :miner_two_data, :user_id#, algorithm: :concurrently
  end

  def down
    drop_table :miner_two_data
  end
end
