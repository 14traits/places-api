15.times do
  Place.create(name: FFaker::Address.country, address: FFaker::Address.street_address)
end
