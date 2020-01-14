class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #Not needed, but whatever, here it is
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def ratings
    self.reviews.map{|review| review.rating}
  end

  def average_star_rating
    self.ratings.sum/ self.ratings.size
  end
end
