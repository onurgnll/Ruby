require_relative 'destinations'
require_relative 'planes'

class RandomFlight
    attr_reader :flightnumber , :flightdate , :plane , :gate , :destination

    $time = Time.new
    def initialize(plane = Plane.new)
        @flightnumber = (rand(65..90)).chr + (rand(65..90)).chr+ "-" + rand(1000..9999).to_s
        @flightdate = (0+rand(1..30)).to_s + "/" + (0+rand(1..12)).to_s + "/" + $time.year.to_s
        @plane = plane.planetype
        @gate = rand(65..90).chr + rand(100..200).to_s
        ucus = Destinations.new
        @destination = ucus.departureairport + " - " + ucus.landingairport
    end
end


