require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
@frank = Employee.create(first_name: "Frank", last_name: "Sinatra", hourly_rate: 60, store_id: 2)
puts @frank.password