require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.new(location: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.new(location: 'Whistler', annual_revenue: 1900000, mens_apparel: false, womens_apparel: false)
yaletown = Store.new(location: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

@mens_stores.each do |store|
  puts "#{store.location} has an annual revenue of #{store.annual_revenue}."
end

@womens_stores = Store.where(mens_apparel: false, womens_apparel: true, annual_revenue: < 1000000)

@womens_stores.each do |store|
  puts "#{store.location} has an annual revenue or #{store.annual_revenue}"
end
