class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review| review.restaurant}
  end 

  def customers
   reviews.select{|customer| customer.restaurant}.uniq
  end 

  def restaurant_average_star_rating
    
  end 
end
