class Review
     attr_reader :rating, :restaurant, :customer
      @@all = []

    def initialize(rating, restaurant, customer)
        @rating = rating
        @restaurant = restaurant
        @customer = customer
        @@all = []
    end

    def self.all
        @@all << self
    end

end

  
