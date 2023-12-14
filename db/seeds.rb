# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ActiveRecord::Base.connection.execute(<<~SQL
  INSERT INTO miner_data (created_at, updated_at, name, fan_percentage)
  SELECT generate_series, generate_series, md5(random()::text), (random()*100)::int
  FROM generate_series('2016-01-01 00:00:00'::timestamp,  '2022-12-20 23:59:59'::timestamp, '2 seconds');
SQL)
