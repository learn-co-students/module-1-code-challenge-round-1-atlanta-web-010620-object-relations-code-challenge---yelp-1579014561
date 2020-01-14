class Restaurant
  attr_reader :name, :reviews, :customers
@@all = []

  def initialize(name, reviews, customers)
    @name = name
    @reviews = reviews
    @customers = customers 
    @@all << self
  end

  def average_star_rating
  end
  
end
