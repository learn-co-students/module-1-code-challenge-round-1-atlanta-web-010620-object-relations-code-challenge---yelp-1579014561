class Restaurant
  attr_reader :name

  # instance methods 
  def initialize(name)
    @name = name
  end

  def reviews 
    Review.all.select{|review| review.restaurant == self}
  end 

  def customers 
    reviews.map{|review| review.customer}.uniq
  end 

  def average_star_rating 
    # use #reviews method to map all review values 
    our_ratings = reviews.map{|review| review.rating}
    # sum that array, then divied by length to find average 
    our_ratings.sum/our_ratings.length 
  end 

  # class methods 

end