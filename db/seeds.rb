# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  store1 = Store.create!(
    name: Faker::Company.name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.city
  )
  store2 = Store.create!(
    name: Faker::Company.name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.city
  )

  customer1 = Customer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    country: Faker::Address.country,
    store: store1
  )
  customer2 = Customer.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    country: Faker::Address.country,
    store: store2
  )

  Reservation.create!(
    date: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all),
    guest_count: Faker::Number.within(range: 1..10),
    store: store1,
    customer: customer1
  )
  Reservation.create!(
    date: Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all),
    guest_count: Faker::Number.within(range: 1..10),
    store: store2,
    customer: customer2
  )
end
