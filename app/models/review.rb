class Review
    attr_reader :rating, :customer, :restaurant
    @@all = []
    # instance methods 
    def initialize(customer, restaurant,rating) 
        @customer = customer
        @restaurant = restaurant
        @rating = rating 
        @@all << self 
    end 


    # class methods 
    def self.all 
        @@all 
    end 
    
end
