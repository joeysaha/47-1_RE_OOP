class Location
  def initialize(city)
    @city = city
  end
  def city
    @city
  end
end

class Trip
  def initialize
    @stops = []
  end
  def stops(stop)
    @stops<<stop.city
  end
  def schedule
    puts "Began trip."
    @stops.each_cons(2) { |stop|
      puts "Travelled to #{stop[0]} to #{stop[1]}"
    }
    puts "Ended trip."
  end
end

loc1 = Location.new("Toronto")
loc2 = Location.new("Montreal")
loc3 = Location.new("Vancouver")
loc4 = Location.new("New York")
loc5 = Location.new("Buffalo")

trip = Trip.new
trip.stops(loc1)
trip.stops(loc2)
trip.stops(loc3)
trip.stops(loc4)
trip.stops(loc5)

trip.schedule
