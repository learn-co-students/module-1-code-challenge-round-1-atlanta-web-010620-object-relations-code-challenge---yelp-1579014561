require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
   
 r1 = Restaurant.new('first')
 r2 = Restaurant.new('second')
 r3 = Restaurant.new('thrird')
 r4 = Restaurant.new('forth')

 c1 = Customer.new('bob', 'bobby')
 c2 = Customer.new('bill', 'billy')
 c3 = Customer.new('tom', 'tommy')
 c4 = Customer.new('joe', 'joey')


 view1 = Review.new(r1, c1, 5)
 view2 = Review.new(r2, c2, 4)
 view3 = Review.new(r3, c3, 6)
 view4 = Review.new(r4, c3, 8)
 view5 = Review.new(r2, c1, 10)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line