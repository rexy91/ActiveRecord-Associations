- To test out the accosiation implmentations, please bundle install, and run rake db:console. 

- User the following seed data:

p1 = Passenger.new("Mike",1)
p2 = Passenger.new("Michael,2)
p3 = Passenger.new("Jane",3)

f1 = Flight.new('Mars', 'The Light', 1)
f2 = Flight.new('Cancun', 'HolidayFlight', 2)
f3 = Flight.new('Moon', 'SpaceShip', 3)

t1 = Ticket.new(1,1)
t2 = Ticket.new(1,2)
t3 = Ticket.new(1,3)
t4 = Ticket.new(2,1)
t4 = Ticket.new(2,2)
t4 = Ticket.new(2,3)