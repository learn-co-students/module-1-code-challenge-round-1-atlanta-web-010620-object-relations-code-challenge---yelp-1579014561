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

   def restaurant 
    Review.all.select{|review| review.restaurant}
   end 

   def self.find_by_name(name)
    self.all.find{|name| name == name}
   end 

   
end
