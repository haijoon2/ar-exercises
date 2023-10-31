require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.first
@store2 = Store.second
@store1.update(name: 'White Rock')

puts "Updated Store 1 Name: #{@store1.name}"