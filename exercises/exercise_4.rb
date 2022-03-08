require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", 
  annual_revenue: 224000, 
  mens_apparel:false, 
  womens_apparel: true)

Store.create(name: "Whistler", 
  annual_revenue: 1900000, 
  mens_apparel:true, 
  womens_apparel: false)

Store.create(name: "Yaletown", 
  annual_revenue: 430000, 
  mens_apparel:true, 
  womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

# Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each {|x| puts "name: #{x.name}, annual_revenue: #{x.annual_revenue}"}

# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.where(["womens_apparel = ? and annual_revenue < ?", "true", 1000000])

@womens_stores.each {|x| puts "name: #{x.name}, annual_revenue: #{x.annual_revenue}"}