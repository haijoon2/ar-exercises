require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base # handler using Ruby (converter)
  # ORM it's a library tool that handles 
  belongs_to :store

  validates :first_namename, presence: true
  validates :last_name_namename, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store, presence: true
end


class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_apparel

  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "must carry at least one of men's or women's apparel")
      errors.add(:womens_apparel, "must carry at least one of men's or women's apparel")
    end
  end
end

puts "Enter a store name:"
store_name = gets.chomp

puts "Enter an annual revenue:"
revenue = gets.chomp

puts "Does it have mens apparel? (true or false)"
mens= gets.chomp

puts "Does it have womens apparel? (true or false)"
womens = gets.chomp


# Attempt to create a store with the inputted name but leave out the other fields.
new_store = Store.new(name: store_name, annual_revenue: revenue, mens_apparel: mens, womens_apparel: womens)

if new_store.save
  puts "Store successfully created!"
else
  puts "Store could not be created due to the following errors:"
  new_store.errors.full_message.each do |error_message|
    puts error_message
  end
end