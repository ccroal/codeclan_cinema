require('pry')
require_relative('./models/customer.rb')
require_relative('./models/film.rb')

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

binding.pry
nil
