class Ticket  
 
    @@all = [] 

    attr_accessor :flight_id, :passenger_id
    
    def initialize(passenger_id, flight_id)
        @passenger_id = passenger_id
        @flight_id = flight_id
        @@all << self 

    end
    
    def self.all 
        @@all 
    end
    
    # belongs_to :passenger 
    def passenger
        Passenger.all.select do |passenger|
            passenger.passenger_id == self.passenger_id 
        end 
    end 
     
    # belongs_to :flight
    def flight
        Flight.all.select do |flight|
            flight.flight_id == self.flight_id
        end 
    end 
end
