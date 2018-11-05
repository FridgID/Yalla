puts "seeding..."

#TODO: date/time stuff
#TODO: users

Tour.create([
  {
    title: "fancy food in ams",
    capacity: 6,
    category: "food",
    longitude: 52.376189,
    latitude: 4.893036,
    location: "amsterdam",
    price_euro: 5
  },
  {
    title: "buy beer",
    capacity: 200,
    category: "beer",
    longitude: 52.376199,
    latitude: 4.893236,
    location: "amsterdam",
    price_euro: 100
  },
  {
    title: "bike & beer",
    capacity: 10,
    category: "bike",
    longitude: 52.376198,
    latitude: 4.893237,
    location: "amsterdam",
    price_euro: 20
  },
])
