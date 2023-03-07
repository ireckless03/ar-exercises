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
class Employee < ApplicationRecord
  belongs_to :store 

  validates :first_name, :last_name, :hourly_rate, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

class Store < ApplicationRecord
  has_many: employees

  validates :location, length: { minimum: 3}
  validates :annual_revenue, numericality: { minimum: 0}
  validates :carries_apparel

  def carries_apparel
    if mens_apparel.present? || womens_apparel.present?
    end
  end

end

puts "Enter store location"
store_location = gets.chomp

if store_location = Store.create(location: store_location)
  puts "#{store_location} was created"
else
  puts "Did not create sucessfully"
end


