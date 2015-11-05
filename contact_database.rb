require_relative 'application.rb'

## TODO: Implement CSV reading/writing
require 'csv'
contacts = CSV.read('contacts.csv')
contacts << ["peter pan", "peter@magic.com"]
contacts << contact1

puts contacts