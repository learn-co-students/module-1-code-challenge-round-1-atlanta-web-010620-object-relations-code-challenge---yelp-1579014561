class Customer
  attr_accessor :given_name, :family_name, :restaurants, :add_review, :num_reviews

    @@all = []

  def initialize(given_name, family_name, num_reviews)
    @given_name = given_name
    @family_name  = family_name
    @num_reviews = reviews
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
      @@all << self 
  end

  def restaurants
   select.{|customer.map|  |restaurant.map|}
  end

   
  def add_review(restaurant, rating)
    @restaurant = restaurant
    @rating = rating
  end

  def find_by_name(name)
    @name = name
    "#{given_name} #{family_name}"
  end
  

end
