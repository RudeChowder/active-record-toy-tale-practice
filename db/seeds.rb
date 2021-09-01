# This will delete any existing rows from the Toy and Kid tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting toy/kid data..."
Toy.destroy_all
Kid.destroy_all

puts "Creating toys..."
woody = Toy.create(name: "Woody", price: 10)
buzz = Toy.create(name: "Buzz Lightyear", price: 100)
bopeep = Toy.create(name: "Bo-Peep", price: 20)
slinky = Toy.create(name: "Slinky", price: 30)
rex = Toy.create(name: "Rex", price: 25)
potato = Toy.create(name: "Mr. Potato Head", price: 5)

puts "Creating kids..."
andy = Kid.create(name: "Andy")
sid = Kid.create(name: "Sid")

puts "Creating purchases..."
# ***********************************************************
# * TODO: create purchases! Remember, a role belongs to a toy *
# * and a role belongs to an kid.                         *
# ***********************************************************
# Create Purchases Here
Purchase.create(kid: andy, toy: woody, quantity: 1)
Purchase.create(kid: andy, toy: buzz, quantity: 1)
Purchase.create(kid: andy, toy: bopeep, quantity: 1)
Purchase.create(kid: andy, toy: potato, quantity: 2)
Purchase.create(kid: sid, toy: rex, quantity: 6)
Purchase.create(kid: sid, toy: buzz, quantity: 5)



puts "Seeding done!"