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
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, presence: true
  validates :first_name, :last_name, :hourly_rate, :store_id, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { minimum: 0}
  validate :carries_apparel

  def carries_apparel
    if !mens_apparel && !womens_apparel

    end
  end

end

puts "Enter store name"
store_name = gets.chomp.to_s

new_store = Store.create(name: store_name, mens_apparel: true, womens_apparel: true)
puts "Is #{store_name} valid? " + new_store.valid?.to_s.upcase

puts "Errors when trying to upload annual_revenue: " + new_store.errors.details[:annual_revenue].to_s

puts "Carries men/women apparel?" + new_store.errors.details[:mens_apparel].to_s + new_store.errors.details[:women_apparel].to_s