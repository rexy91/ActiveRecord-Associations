require_relative './passenger.rb'
class Ticket  
    belongs_to :passenger 
    belongs_to :flight

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

    def passenger
        Passenger.all.select do |passenger|
            passenger.passenger_id == self.passenger_id 
        end 
    end 
    
    def flight
        Flight.all.select do |flight|
            flight.flight_id == self.flight_id
        end 
    end 
end