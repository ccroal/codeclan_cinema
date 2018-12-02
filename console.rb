require('pry')
require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/ticket.rb')

Ticket.delete_all
Customer.delete_all
Film.delete_all

customer1 = Customer.new({'name' => 'David', 'funds' => 100})
customer1.save()
customer2 = Customer.new({'name' => 'Sarah', 'funds' => 75})
customer2.save()
customer3 = Customer.new({'name' => 'Laura', 'funds' => 150})
customer3.save()

film1 = Film.new({'title' => 'The Matrix', 'price' => 10})
film1.save()
film2 = Film.new({'title' => 'John Wick', 'price' => 11})
film2.save()
film3 = Film.new({'title' => 'North by North West', 'price' => 7})
film3.save()

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film2.id})
ticket1.save()
ticket2 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film3.id})
ticket2.save()
ticket3 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
ticket3.save()
ticket4 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket4.save
ticket5 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film3.id})
ticket5.save

customer1.name = 'Steven'
customer1.update

film1.title = 'The Matrix 2'
film1.update

customer1.buy_ticket(film1)
customer2.buy_ticket(film3)
binding.pry
nil
