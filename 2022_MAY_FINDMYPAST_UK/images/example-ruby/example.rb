#!/usr/bin/env ruby

require 'active_record'
require 'csv'
require 'json'

# connect to the database
ActiveRecord::Base.establish_connection(adapter: :mysql2, host: :database, username: :codetest, password: :swordfish, database: :codetest)

# make an ORM object to refer to the table
class Example < ActiveRecord::Base; end

# read the CSV data file into the table
CSV.read('/data/example.csv', headers: true).map(&:to_h).each do |row|
  Example.create(row)
end

# output the table to a JSON file
json_data = Example.all.map(&:serializable_hash).to_json
File.write('/data/example_ruby.json', json_data)
