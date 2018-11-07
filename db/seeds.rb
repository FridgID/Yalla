puts "seeding..."

#TODO: date/time stuff

puts "destroy tours and users..."
Tour.destroy_all
User.destroy_all

puts "create users..."
user = User.create!(email: 'test@test.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 't@t.nl', password: 'password', password_confirmation: 'password')

puts "create tours..."
Tour.create!([
  {
    title: "fancy food in ams",
    description: "Really good food trail around Amsterdam",
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
    description: "Really good beer trail around Amsterdam",
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
    description: "Really good bike & beer trail around Amsterdam",
    capacity: 10,
    category: "bike",
    longitude: 52.376198,
    latitude: 4.893237,
    location: "amsterdam",
    price_euro: 20,
    user_id: user.id
  },
  {
    title: "chill boat tour",
    description: "Some nice shippy bippy in ze river",
    capacity: 10,
    category: "boat",
    longitude: 52.376198,
    latitude: 4.893237,
    location: "amsterdam",
    price_euro: 20,
    user_id: user.id
  },
  {
    title: "Walk and talk",
    description: "Sniff some fresh air in the forests",
    capacity: 15,
    category: "walk",
    longitude: 52.376182,
    latitude: 4.893267,
    location: "amsterdam",
    price_euro: 1,
    user_id: user.id
  },
  {
    title: "Jungle adventure in ams",
    description: "Snakes and dirt",
    capacity: 8,
    category: "walk",
    longitude: 52.376182,
    latitude: 4.893167,
    location: "amsterdam",
    price_euro: 22,
    user_id: user2.id
  }
])


