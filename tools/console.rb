require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Bradley", "Dixon")
c2 = Customer.new("Dino", "Something")
c3 = Customer.new("Mitch", "Goodwin")
c4 = Customer.new("No" , "Reviews")

r1 = Restaurant.new("Benihanas")
r2 = Restaurant.new("Olive Garden")
r3 = Restaurant.new("Chicken Store")

rev1 = Review.new(c1, r1, 10)
rev2 = Review.new(c2, r2, 8)
rev3 = Review.new(c3, r3, 4)
rev4 = Review.new(c1, r2, 8)
rev5 = Review.new(c2, r1, 8)
rev6 = Review.new(c1, r3, 1)

c4.add_review(r1, 0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line