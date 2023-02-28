class Plane
    attr_reader :planetype , :maxpassanger

    $planes = {'Airbus A330' => '200' , 'Airbus A340' => '250' , 'Boeing 737-800' => '300' , 'Boeing 737-900 ER' => '350'}

    def initialize
        @planetype = $planes.keys[rand(0..3)]
        @maxpassanger = $planes.values_at(@planetype)


    end

end
