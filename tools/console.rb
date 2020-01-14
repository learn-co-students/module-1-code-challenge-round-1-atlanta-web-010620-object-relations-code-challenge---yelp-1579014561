require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Billy","Joel")

cust3 = Customer.new("Apple","Saul")
cust4 = Customer.new("Fish","Paul")
cust5 = Customer.new("Whale","Milk")
cust2 = Customer.new("Santa","Noel")
cust7 = Customer.new("Santa","Noel")
cust8 = Customer.new("Santa","Noel")


restaurant1 = Restaurant.new("Chipotle")
restaurant2 = Restaurant.new("Bread")
restaurant3 = Restaurant.new("Noodle")

rev1 = Review.new(cust1,restaurant1,5)
rev1 = Review.new(cust2,restaurant1,4)
rev1 = Review.new(cust2,restaurant1,5)
rev1 = Review.new(cust4,restaurant1,5)

puts cust1.full_name 
puts "restaurants: "
puts cust1.restaurants 
puts "adding review: "
puts cust1.add_review(restaurant1,100000) 
puts "restaurants again: "
puts cust1.restaurants
puts "reviews: "
puts cust1.reviews 
puts "num_reviews: "
puts cust1.num_reviews 

puts "find by name (Santa): "
Customer.find_by_name("Santa")

puts 'RESTAURANT TESTS: '
puts "reviews: "
puts  restaurant1.reviews 
puts "unique customers: "
# test and make sure customers are unique 
cust1.add_review(restaurant1,1)
cust1.add_review(restaurant1,1)
cust1.add_review(restaurant1,1)
puts restaurant1.customers
puts "average star rating: " 
puts restaurant1.average_star_rating 
cust1.add_review(restaurant1,1)
cust1.add_review(restaurant1,1)
cust1.add_review(restaurant1,1)
puts "after lowering that rating with bad reviews: "
puts restaurant1.average_star_rating 


Customer.all 
Customer.find_by_name("Santa Noel")
Customer.find_all_by_given_name("Santa")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line