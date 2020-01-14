require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mitch = Customer.new("Mitchell", "Goodwin")
evil_mitch = Customer.new("Mitchell", "Badwin")
erika = Customer.new("Erika", "Goodwin")
chris = Customer.new("Chris", "Parker")

olive_garden = Restaurant.new("Olive Garden")
gio = Restaurant.new("Giovana's")

review1 = Review.new(mitch, gio, 5)
mitch.add_review(gio, 4)
erika.add_review(olive_garden, 3)
chris.add_review(gio, 2)
erika.add_review(gio, 5)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line