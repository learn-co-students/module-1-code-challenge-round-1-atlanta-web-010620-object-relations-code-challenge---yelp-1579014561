require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("Dino", "Kunovac")
c2 = Customer.new("Kevin", "Durant")
c3 = Customer.new("Bradley", "Cooper")

r1 = Restaurant.new("All the Dogs")
r2 = Restaurant.new("You won't know its Vegan")
r3 = Restaurant.new("Big Dean's BBQ")

review1 = Review.new(c1, r3, 10)
review2 = Review.new(c2, r2, 9)
review3 = Review.new(c3, r1, 6)
review4 = Review.new(c1, r2, 9)
review5 = Review.new(c3, r3, 7)
review6 = Review.new(c3, r3, 8)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line