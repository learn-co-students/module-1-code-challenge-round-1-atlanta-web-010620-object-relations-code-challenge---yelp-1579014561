class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |rw| rw.restaurant == self}
  end

  def customers
    reviews.map {|r| r.customer}.uniq
  end

end
