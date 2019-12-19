class Passenger < ActiveRecord::Base
    has_many :tickets
    has_many :flights, through: :tickets 
end 
    






    attr_accessor :name, :passenger_id

    @@all = [] 

    def self.all
        @@all 
    end 

    def initialize(name, passenger_id )
        @passenger_id = passenger_id
        @name = name
        @@all << self 
    end

    def tickets
        Ticket.all.select do|ticket|
            ticket.passenger_id = self.id
        end 
    end  

    def flights 
        ticket_instances = self.tickets # Returns all the ticket instances associated with this passenger

        ticket_instances.map do |ticket_instance| # Using map to transform it into an array of 
                                                  # flight instances associated with this passenger.
            ticket_instance.flight
        end 
    end 
end



