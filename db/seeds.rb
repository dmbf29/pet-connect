puts 'Cleaning the DB...'
Pet.destroy_all

puts 'Creating pets...'
45.times do
  Pet.create!(
    name: Faker::GreekPhilosophers.name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10)
  )
end
puts "...Created #{Pet.count} pets"
