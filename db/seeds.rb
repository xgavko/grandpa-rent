Rent.destroy_all
Elder.destroy_all
User.destroy_all

puts 'Start seed'

me = User.create!(first_name: 'Benoit', last_name: 'Calin', email: 'benoit.cal@grandpa-rent.com', password:'123soleil')
u2 = User.create!(first_name: 'Xeniia', last_name: 'Gavr', email: 'xeniia.g@grandpa-rent.com', password:'123soleil')
u3 = User.create!(first_name: 'Kenza', last_name: 'Ahed', email: 'kenza.a@grandpa-rent.com', password:'123soleil')

elder1 = Elder.new(full_name: 'Bébère', address: 'EPHAD n°1, Bordeaux')
elder1.user = me
elder1.save!
elder2 = Elder.new(full_name: 'Nanard', address: 'EPHAD n°3, Bordeaux')
elder2.user = User.last
elder2.save!
elder3 = Elder.new(full_name: 'Georges', address: 'EPHAD n°2, Bordeaux')
elder3.user = User.last
elder3.save!

d1 = Date.new(2019, 4, 1)
d2 = Date.new(2019, 4, 5)

r = Rent.new(start_date: d1, end_date: d2, user: me, elder: elder2, rating: Random.rand(0..5) )
r.save!
r = Rent.new(start_date: d1, end_date: d2, user: u2, elder: elder3, rating: Random.rand(0..5))
r.save!
r = Rent.new(start_date: d1, end_date: d2, user: u3, elder: elder1, rating: Random.rand(0..5))
r.save!

puts 'The end'
