# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


contact_list = [
  [ "Megan", "Madrid", 985393234, "megan@ironhack.com" ],
  [ "Mégara", "Barcelona", 985393235, "megara@ironhack.com" ],
  [ "Penélope", "Pontevedra", 985393236, "penelope@ironhack.com" ],
  [ "Demóstenes", "Murcia", 985393237, "demo@ironhack.com" ],
  [ "Arquímedes", "Cuenca", 985393238, "arq@ironhack.com" ],
  [ "Aristófanes", "Peñaranda", 985393239, "ari@ironhack.com" ]

]

contact_list.each do |name, address, phone_number, email|
  Contact.create( name: name, address: address, phone_number: phone_number, email: email )
end