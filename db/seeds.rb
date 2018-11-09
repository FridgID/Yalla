
puts "destroy bookings..."
Booking.destroy_all
puts "destroy reviews.."
Review.destroy_all
puts "destroy tours..."
Tour.destroy_all
puts "destroy users..."
User.destroy_all

puts "create users..."
User.create!(name: "brokenbanana77", email: 'test@test.com', password: 'password')
User.create!(name: "xXSteveGamerHDXx", email: 't@t.nl', password: 'password')
User.create!(name: "funnybunny", email: '1@2.nl', password: 'password')
User.create!(name: "lolbob", email: '2@2.nl', password: 'password')

10.times do |x|
  User.create!(name: "#{Faker::TheFreshPrinceOfBelAir.character}#{Random.rand(0..2050)}", email: "#{x}@1.nl", password: 'password')
end

user_ids = (User.first.id..User.last.id).to_a
puts "USER_IDS=#{user_ids}"
puts "SAMPLE_USER=#{user_ids.sample}"

puts "create tours..."
time_stamp = Time.now

Tour.create!([
  {
    title: "FANCY FOOD TRAIL",
    description: "Really good food trail around Amsterdam",
    capacity: 6,
    category: "food",
    longitude: 4.893036,
    latitude: 52.376189,
    location: "Amsterdam",
    price_euro: 5,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Albert Cyup Straat",
    description: "Enjoy the culinary delights of Albert Cyup Straat.",
    capacity: 2,
    category: "food",
    longitude: 4.893036,
    latitude: 52.376129,
    location: "Amsterdam",
    price_euro: 10,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Canal Cruise",
    description: "Take a canal cruise through the historice Amsterdam canals",
    capacity: 10,
    category: "boat",
    longitude: 4.893039,
    latitude: 52.376289,
    location: "Amsterdam",
    price_euro: 50,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Craft Beer Rub",
    description: "5km run to five craft breweries in Amsterdam. We start at De Praal in the Wallen",
    capacity: 20,
    category: "beer",
    longitude: 4.893036,
    latitude: 52.376182,
    location: "Amsterdam",
    price_euro: 20,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Beer & Bike",
    description: "Take a cycle to the craft breweries in Amsterdam. We will take the ferry Noord to reknown Oedipus brewery.",
    capacity: 10,
    category: "beer",
    longitude: 4.893036,
    latitude: 52.376189,
    location: "Amsterdam",
    price_euro: 10,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Boat to Ouderkerk",
    description: "Take our boat down the Amstel to the lovely village of Ouderkerk and enjoy your lunch there or picnic on the side of the Amstel",
    capacity: 6,
    category: "boat",
    longitude: 4.893236,
    latitude: 52.376199,
    location: "Amsterdam",
    price_euro: 10,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Food Trail in Jordaan",
    description: "Join me to enjoy the cuilnary delights of the Jordaan.",
    capacity: 15,
    category: "food",
    longitude: 2.2945,
    latitude: 48.8582,
    location: "Amsterdam",
    price_euro: 80,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Night Boat Tour",
    description: "Come and join me as we boat around the world famous canals at night",
    capacity: 10,
    category: "boat",
    longitude: 52.376198,
    latitude: 4.893237,
    location: "Amsterdam",
    price_euro: 50,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Jenveer Tour",
    description: "Join me in sipping the famous Jenveer tipple",
    capacity: 15,
    category: "food",
    longitude: 52.376182,
    latitude: 4.893267,
    location: "Amsterdam",
    price_euro: 1,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Hidden Places In Amsterdam",
    description: "Feel the power of an underground tour guide that shows some magic.",
    capacity: 8,
    category: "walk",
    longitude: 52.376281,
    latitude: 4.893267,
    location: "Amsterdam",
    price_euro: 25,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Tour the Pijp",
    description: "Join me on a walkig tour of the Pijp. We will take in the famous Albert Cyup street",
    capacity: 8,
    category: "walk",
    longitude: 52.376281,
    latitude: 4.893268,
    location: "Amsterdam",
    price_euro: 20,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Bike to Ouderkerk",
    description: "Cycle along the Amstel to the lovely village of Ouderkerk",
    capacity: 15,
    category: "bike",
    longitude: 52.376261,
    latitude: 4.893268,
    location: "Amsterdam",
    price_euro: 10,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  },
  {
    title: "Walk in the Bos",
    description: "Join me a gorgeous walk around the Bos of the Amsterdam",
    capacity: 10,
    category: "walk",
    longitude: 4.893167,
    latitude: 52.376182,
    location: "Amsterdam",
    price_euro: 22,
    date: time_stamp,
    start_time: time_stamp,
    end_time: time_stamp + Random.rand(1..5) * 60 * 60,
    user_id: user_ids.sample
  }
])

tour_ids = (Tour.first.id..Tour.last.id).to_a
puts "TOUR_IDS=#{tour_ids}"
puts "SAMPLE_TOUR=#{tour_ids.sample}"
r_count = tour_ids.count * 10

puts "creating #{r_count} reviews..."
r_count.times do
  Review.create!([
    {
      rating: Random.rand(0..5),
      comment: Faker::TheFreshPrinceOfBelAir.quote,
      tour_id: tour_ids.sample,
      user_id: user_ids.sample
    }
  ])
end

