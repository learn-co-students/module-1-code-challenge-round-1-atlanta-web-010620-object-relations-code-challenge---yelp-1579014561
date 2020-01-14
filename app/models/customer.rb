class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select {|rw| rw.customer == self}.map {|rw| rw.restaurant}.uniq
  end

  def add_review(restaurant, rating=0)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select {|rw| rw.customer == self}.count
  end

  def self.find_by_name(name)
    self.all.find {|c| c.full_name == name}
  end

end
