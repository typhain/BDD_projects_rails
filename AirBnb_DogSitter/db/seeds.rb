require 'faker'

50.times do
  City.create(city_name: Faker::Address.city)
end

50.times do
  Dog.create(name: Faker::Name.first_name, city_id: rand(1..50))
end

50.times do
  Dogsitter.create(name: Faker::Name.first_name, city_id: rand(1..50))
end


50.times do
  Stroll.create(dog: Dog.all.sample, dogsitter: Dogsitter.all.sample)
end
