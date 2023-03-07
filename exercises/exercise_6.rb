require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ApplicationRecord
  has_many :employees
end

class Employee < ApplicationRecord
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 20)
@store2.employees.create(first_name: "Wanda", last_name: "Loo", hourly_rate: 20)
@store3.employees.create(first_name: "Dean", last_name: "Rust", hourly_rate: 18)
@store4.employees.create(first_name: "John", last_name: "Burg", hourly_rate: 17)
@store5.employees.create(first_name: "Lucy", last_name: "Ham", hourly_rate: 32)
@store1.employees.create(first_name: "Lacey", last_name: "Baldi", hourly_rate: 35)
@store2.employees.create(first_name: "Joy", last_name: "Hope", hourly_rate: 22)
@store3.employees.create(first_name: "Jason", last_name: "Vong", hourly_rate: 25)
@store4.employees.create(first_name: "Ryan", last_name: "Cohen", hourly_rate: 60)
@store5.employees.create(first_name: "Warren", last_name: "Buffet", hourly_rate: 45)
@store1.employees.create(first_name: "Bryan", last_name: "O'Connor", hourly_rate: 55)
