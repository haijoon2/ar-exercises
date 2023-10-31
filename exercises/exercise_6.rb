require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
  # Rest of your Store model code
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Emily", last_name: "Kim", hourly_rate: 55)
@store2.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 50)
@store2.employees.create(first_name: "Klark", last_name: "Lo", hourly_rate: 65)
@store1.employees.create(first_name: "Klark", last_name: "Lo", hourly_rate: 60)

puts "Store 1 has #{@store1.employees.count} employees"
puts "Store 2 has #{@store2.employees.count} employees"
puts "Total number of employees at all stores: #{Employee.count}"