Rent.destroy_all
Elder.destroy_all
User.destroy_all
Skill.destroy_all

puts 'Start seed'

me = User.create!(first_name: 'Benoit', last_name: 'Calin', email: 'benoit.cal@grandpa-rent.com', password:'123soleil')
u2 = User.create!(first_name: 'Xeniia', last_name: 'Gavr', email: 'xeniia.g@grandpa-rent.com', password:'123soleil')
u3 = User.create!(first_name: 'Kenza', last_name: 'Ahed', email: 'kenza.a@grandpa-rent.com', password:'123soleil')

skill1 = Skill.new(name: 'water plants')
skill1.save!
skill2 = Skill.new(name: 'yells at the neigboors')
skill2.save!
skill3 = Skill.new(name: 'racist')
skill3.save!
skill4 = Skill.new(name: 'war stories')
skill4.save!
skill5 = Skill.new(name: 'goes to the loo alone')
skill5.save!


url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550597033/sezjazxi50cb8ekvq9jf.jpg"
elder1 = Elder.new(full_name: 'Bébère', address: '50 Cours du Médoc, Bordeaux')
elder1.user = me
elder1.remote_photo_url = url
elder1.save!

url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550666936/ad614ddwypvjsvrontev.jpg"
elder2 = Elder.new(full_name: 'Nanard', address: 'EHPAD Maryse BASTIE, Rue Maryse Bastié, Bordeaux')
elder2.user = u2
elder2.remote_photo_url = url
elder2.save!

url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550670570/Grand_me%CC%80re.jpg"
elder3 = Elder.new(full_name: 'Bernadette', address: 'EPHAD n°2, Bordeaux')
elder3.user = u3
elder3.remote_photo_url = url
elder3.save!

url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550593784/51283453ecb388d16f1185ceb6f46922--love-her-i-love.jpg"
elder4 = Elder.new(full_name: 'Mamie Rose', address: '2 Rue Poyenne, Bordeaux')
elder4.user = u3
elder4.remote_photo_url = url
elder4.save!

elder_skill1 = ElderSkill.new(elder: elder1, skill: skill4)
elder_skill1.save!
elder_skill2 = ElderSkill.new(elder: elder3, skill: skill1)
elder_skill2.save!
elder_skill3 = ElderSkill.new(elder: elder2, skill: skill3)
elder_skill3.save!
elder_skill4 = ElderSkill.new(elder: elder2, skill: skill5)
elder_skill4.save!

d1 = Date.new(2019, 4, 1)
d2 = Date.new(2019, 4, 5)

r1 = Rent.new(start_date: d1, end_date: d2, user: me, elder: elder2, rating: Random.rand(0..5) )
r1.save!
r2 = Rent.new(start_date: d1, end_date: d2, user: u2, elder: elder3, rating: Random.rand(0..5))
r2.save!
r3 = Rent.new(start_date: d1, end_date: d2, user: u3, elder: elder1, rating: Random.rand(0..5))
r3.save!

puts 'The end'
