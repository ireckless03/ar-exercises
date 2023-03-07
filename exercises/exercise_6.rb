require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  has_many :employees
end

@store1 = Store.find(1)
@store2 = Store.find(2)
@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 20)
@store2.employees.create(first_name: "Wanda", last_name: "Loo", hourly_rate: 20)
@store6.employees.create(first_name: "Dean", last_name: "Rust", hourly_rate: 18)
@store4.employees.create(first_name: "John", last_name: "Burg", hourly_rate: 17)
@store5.employees.create(first_name: "Lucy", last_name: "Ham", hourly_rate: 32)
@store1.employees.create(first_name: "Lacey", last_name: "Baldi", hourly_rate: 35)
@store2.employees.create(first_name: "Joy", last_name: "Hope", hourly_rate: 22)
@store6.employees.create(first_name: "Jason", last_name: "Vong", hourly_rate: 25)
@store4.employees.create(first_name: "Ryan", last_name: "Cohen", hourly_rate: 60)
@store5.employees.create(first_name: "Warren", last_name: "Buffet", hourly_rate: 45)
@store1.employees.create(first_name: "Bryan", last_name: "O'Connor", hourly_rate: 55)


