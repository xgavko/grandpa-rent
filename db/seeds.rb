Rent.destroy_all
Elder.destroy_all
User.destroy_all
Skill.destroy_all

puts 'Start seed'

me = User.create!(first_name: 'Benoit', last_name: 'Calin', email: 'benoit.cal@grandpa-rent.com', password:'123soleil')
u2 = User.create!(first_name: 'Xeniia', last_name: 'Gavr', email: 'xeniia.g@grandpa-rent.com', password:'123soleil')
u3 = User.create!(first_name: 'Kenza', last_name: 'Ahed', email: 'kenza.a@grandpa-rent.com', password:'123soleil')
u4 = User.create!(first_name: 'Nico', last_name: 'Beaud', email: 'nico.beaud@grandpa-rent.com', password:'123soleil')

skill1 = Skill.new(name: 'Water plants')
skill1.save!
skill2 = Skill.new(name: 'Yells at the neigboors')
skill2.save!
skill3 = Skill.new(name: 'Racist')
skill3.save!
skill4 = Skill.new(name: 'War stories')
skill4.save!
skill5 = Skill.new(name: 'Goes to the loo alone')
skill5.save!
skill6 = Skill.new(name: 'Professional at napping')
skill6.save!
skill7 = Skill.new(name: 'Distinguished drinker')
skill7.save!

url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550597033/sezjazxi50cb8ekvq9jf.jpg"
elder1 = Elder.new(full_name: 'Bébère', address: '50 Cours du Médoc, Bordeaux')
elder1.user = me
elder1.remote_photo_url = url
elder1.save!

url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550666936/ad614ddwypvjsvrontev.jpg"
elder2 = Elder.new(full_name: 'Nanard', address: '2 Rue Maryse Bastié, Bordeaux')
elder2.user = u2
elder2.remote_photo_url = url
elder2.save!

url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550670570/Grand_me%CC%80re.jpg"
elder3 = Elder.new(full_name: 'Bernadette', address: '8 cours de la Martinique, Bordeaux')
elder3.user = u3
elder3.remote_photo_url = url
elder3.save!

url = "https://res.cloudinary.com/do8so5e5p/image/upload/v1550593784/51283453ecb388d16f1185ceb6f46922--love-her-i-love.jpg"
elder4 = Elder.new(full_name: 'Mamie Rose', address: '2 Rue Poyenne, Bordeaux')
elder4.user = u3
elder4.remote_photo_url = url
elder4.save!

url = 'https://res.cloudinary.com/do8so5e5p/image/upload/v1550675461/tf2ka3y1im3gv2e1qn6q.jpg'
elder5 = Elder.new(full_name: 'Pépé Maboul', address: '12 Rue de la Sourdière, 75001 Paris')
elder5.user = u4
elder5.remote_photo_url = url
elder5.save!

url = 'https://res.cloudinary.com/do8so5e5p/image/upload/v1550767160/gamaniak_personnes-agees-100-ans-05.jpg'
elder6 = Elder.new(full_name: 'Agecanonix', address: '29 Boulevard du Temple, 75011 Paris')
elder6.user = me
elder6.remote_photo_url = url
elder6.save!

url = 'https://res.cloudinary.com/do8so5e5p/image/upload/v1550767160/service_personne_agee.jpg'
elder7 = Elder.new(full_name: 'Bonne Maman', address: 'Allée Célestin Hennion, 75004 Paris')
elder7.user = u3
elder7.remote_photo_url = url
elder7.save!

url = 'https://res.cloudinary.com/do8so5e5p/image/upload/v1550767160/321333753-apartar-la-vista-aburrimiento-desesperacion-malhumorado.jpg'
elder8 = Elder.new(full_name: 'Papy Brossard', address: '11 Rue Dupin, 75006 Paris')
elder8.user = u2
elder8.remote_photo_url = url
elder8.save!

url = 'https://res.cloudinary.com/do8so5e5p/image/upload/v1550767160/ef94590c-6d92-4190-9eef-3e1fb62a3fbb.jpg'
elder9 = Elder.new(full_name: 'Saroumane', address: '30 Rue Gay-Lussac, 75005 Paris')
elder9.user = me
elder9.remote_photo_url = url
elder9.save!


elder_skill1 = ElderSkill.new(elder: elder1, skill: skill4)
elder_skill1.save!
elder_skill2 = ElderSkill.new(elder: elder3, skill: skill1)
elder_skill2.save!
elder_skill3 = ElderSkill.new(elder: elder2, skill: skill3)
elder_skill3.save!
elder_skill4 = ElderSkill.new(elder: elder5, skill: skill5)
elder_skill4.save!
elder_skill5 = ElderSkill.new(elder: elder4, skill: skill6)
elder_skill5.save!

d1 = Date.new(2019, 4, 1)
d2 = Date.new(2019, 4, 5)

r1 = Rent.new(start_date: d1, end_date: d2, user: me, elder: elder2, rating: 5, review: 'Très sympa ce vioc')
r1.save!
r2 = Rent.new(start_date: d1, end_date: d2, user: u2, elder: elder3, rating: 1, review: 'Une teigne !')
r2.save!
r3 = Rent.new(start_date: d1, end_date: d2, user: u3, elder: elder1, rating: 3, review: 'Pas mal mais s\'est endormi avant les enfant')
r3.save!
r4 = Rent.new(start_date: d1, end_date: d2, user: u3, elder: elder1, rating: 1, review: 'Une teigne !')
r4.save!
r5 = Rent.new(start_date: d1, end_date: d2, user: u3, elder: elder4, rating: 3, review: 'Pas mal mais s\'est endormi avant les enfant')
r5.save!
r6 = Rent.new(start_date: d1, end_date: d2, user: u3, elder: elder5, rating: 5, review: 'Très sympa ce vioc')
r6.save!

puts 'The end'
