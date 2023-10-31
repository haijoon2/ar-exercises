require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for all stores is #{@total_revenue}"

@average_annual_revenue = Store.average(:annual_revenue)
puts "Average annual revenue for all stores is #{@average_annual_revenue.truncate}"

@high_revenue_stores = Store.where('annual_revenue > ?', 1000000)
puts "Number of high revenue stores are #{@high_revenue_stores.count}"