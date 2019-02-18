Rent.destroy_all
Elder.destroy_all
User.destroy_all

puts 'Start seed'

User.create!(first_name: 'Benoit', last_name: 'Calin', email: 'benoit.cal@grandpa-rent.com', password:'123soleil')
User.create!(first_name: 'Xeniia', last_name: 'Gavr', email: 'xeniia.g@grandpa-rent.com', password:'123soleil')
User.create!(first_name: 'Kenza', last_name: 'Ahed', email: 'kenza.a@grandpa-rent.com', password:'123soleil')

e = Elder.new(full_name: 'Bébère', address: 'EPHAD n°1, Bordeaux')
e.user = User.first
e.save!
e = Elder.new(full_name: 'Nanard', address: 'EPHAD n°3, Bordeaux')
e.user = User.last
e.save!
e = Elder.new(full_name: 'Georges', address: 'EPHAD n°2, Bordeaux')
e.user = User.last
e.save!

d1 = Date.new(2019, 4, 1)
d2 = Date.new(2019, 4, 5)

r = Rent.new(start_date: d1, end_date: d2)
r.user = User.find(2)
r.elder = Elder.first
r.save!
r = Rent.new(start_date: d1, end_date: d2)
r.user = User.first
r.elder = Elder.find(2)
r.save!
r = Rent.new(start_date: d1, end_date: d2)
r.user = User.last
r.elder = Elder.first
r.save!

puts 'The end'
