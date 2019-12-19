class Flight 

    attr_accessor :destination, :name_of_flight, :flight_id

    @@all = [] 
    def self.all
        @@all 
    end

    def initialize(destination, name_of_flight, flight_id)
        @destination = destination
        @name_of_flight = name_of_flight
        @flight_id = flight_id
        @@all << self 
    end


    def tickets
        Ticket.all.select do |ticket|
            ticket.flight_id == self.flight_id
        end 
    end 

    def passengers
        ticket_instances = self.tickets
        ticket_instances.map do |ticket_instance|
            ticket_instance.passenger
        end 
    end 
end
