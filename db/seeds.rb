# Database seeds for Traveler

20.times do |n|
  Traveler.create!(first_name: FFaker::Name.first_name,
                last_name: FFaker::Name.last_name,
                birthday: FFaker::IdentificationESCO.expedition_date,
                gender: FFaker::Gender.maybe )
end
