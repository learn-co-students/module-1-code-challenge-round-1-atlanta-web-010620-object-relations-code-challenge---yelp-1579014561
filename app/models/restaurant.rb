class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.collect{|review| review.customer}
  end

  def ratings
    reviews.map{|review| review.rating}
  end

  def average_star_rating
    ratings.inject{|a,b| a + b}.to_f/reviews.size
  end

end
