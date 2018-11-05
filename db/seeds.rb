puts "seeding..."

#TODO: date/time stuff
#TODO: users
User.destroy_all
Tour.destroy_all


user = User.create!(email: 'test@test.com', password: 'password', password_confirmation: 'password')



Tour.create!([
  {
    title: "fancy food in ams",
    capacity: 6,
    category: "food",
    longitude: 52.376189,
    latitude: 4.893036,
    location: "amsterdam",
    price_euro: 5,
    user_id: user.id
  },
  {
    title: "buy beer",
    capacity: 200,
    category: "beer",
    longitude: 52.376199,
    latitude: 4.893236,
    location: "amsterdam",
    price_euro: 100,
    user_id: user.id
  },
  {
    title: "bike & beer",
    capacity: 10,
    category: "bike",
    longitude: 52.376198,
    latitude: 4.893237,
    location: "amsterdam",
    price_euro: 20,
    user_id: user.id
  },
])


