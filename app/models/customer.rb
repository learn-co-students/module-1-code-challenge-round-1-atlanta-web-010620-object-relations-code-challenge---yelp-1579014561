class Customer
  @@all = []
  attr_accessor :given_name, :family_name
  # instance methods 
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  # define review helper method 
  def reviews 
    Review.all.select{|review| review.customer == self}
  end 

  def restaurants 
    reviews.map {|review| review.restaurant}.uniq
  end 

  def add_review(restaurant,rating) 
    Review.new(self,restaurant,rating)
  end 


  def num_reviews 
    reviews.length 
  end 

  # class methods 
  def self.all
    @@all 
  end 

  def self.find_by_name(name) 
    @@all.find{|customer| customer.full_name == name}
  end 

  def self.find_all_by_given_name(name) 
    @@all.select{|customer| customer.given_name == name}
  end 
end
