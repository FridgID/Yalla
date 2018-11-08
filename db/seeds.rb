puts "destroy reviews.."
Review.destroy_all
puts "destroy tours..."
Tour.destroy_all
puts "destroy users..."
User.destroy_all

puts "create users..."
user = User.create!(name: "brokenbanana77", email: 'test@test.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(name: "xXSteveGamerHDXx", email: 't@t.nl', password: 'password', password_confirmation: 'password')

puts "create tours..."
Tour.create!([
  {
    title: "fancy food in ams",
    description: "Really good food trail around Amsterdam",
    capacity: 6,
    category: "food",
    longitude: 4.893036,
    latitude: 52.376189,
    location: "amsterdam",
    price_euro: 5,
    user_id: user.id
  },
  {
    title: "Eat sleep food repeate",
    description: "48 1 on 1 food marathon.",
    capacity: 2,
    category: "food",
    longitude: 4.893036,
    latitude: 52.376129,
    location: "amsterdam",
    price_euro: 10,
    user_id: user.id
  },
  {
    title: "free food for money",
    description: "Its actually free if you forget about the money you pay.",
    capacity: 4,
    category: "food",
    longitude: 4.893039,
    latitude: 52.376289,
    location: "amsterdam",
    price_euro: 500,
    user_id: user.id
  },
  {
    title: "free beer (tap water)",
    description: "Water? Beer? Difference?     FREE!!!!!!!!!!!",
    capacity: 90,
    category: "beer",
    longitude: 4.893036,
    latitude: 52.376182,
    location: "amsterdam",
    price_euro: 0,
    user_id: user.id
  },
  {
    title: "friday drinks",
    description: "Every day free drinks for only 0 euro. (You have to bring them yourself)",
    capacity: 9999,
    category: "beer",
    longitude: 4.893036,
    latitude: 52.376189,
    location: "amsterdam",
    price_euro: 0,
    user_id: user.id
  },
  {
    title: "buy beer",
    description: "Really good beer trail around Amsterdam",
    capacity: 200,
    category: "beer",
    longitude: 4.893236,
    latitude: 52.376199,
    location: "amsterdam",
    price_euro: 100,
    user_id: user.id
  },
  {
    title: "bike & beer",
    description: "Really good bike & beer trail around Amsterdam",
    capacity: 10,
    category: "bike",
    longitude: 4.893237,
    latitude: 52.376198,
    location: "amsterdam",
    price_euro: 20,
    user_id: user.id
  },
  {
    title: "Paris foo bar",
    description: "Some developers eating beers",
    capacity: 2048,
    category: "food",
    longitude: 2.2945,
    latitude: 48.8582,
    location: "paris",
    price_euro: 80,
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
    title: "Hidden places in amsterdam",
    description: "Feel the power of an underground tour guide that shows some magic.",
    capacity: 8,
    category: "walk",
    longitude: 52.376281,
    latitude: 4.893267,
    location: "amsterdam",
    price_euro: 77,
    user_id: user.id
  },
  {
    title: "You are a pirate!",
    description: "Do what you want cause you are free!! Arr!",
    capacity: 8,
    category: "boat",
    longitude: 52.376281,
    latitude: 4.893268,
    location: "amsterdam",
    price_euro: 0,
    user_id: user.id
  },
  {
    title: "Bee biking!",
    description: "We dress as bees and cycle some bikes :D",
    capacity: 22,
    category: "bike",
    longitude: 52.376261,
    latitude: 4.893268,
    location: "amsterdam",
    price_euro: 1,
    user_id: user.id
  },
  {
    title: "Jungle adventure in ams",
    description: "Snakes and dirt",
    capacity: 8,
    category: "walk",
    longitude: 4.893167,
    latitude: 52.376182,
    location: "amsterdam",
    price_euro: 22,
    user_id: user2.id
  }
])

tour_ids = (Tour.first.id..Tour.last.id).to_a
user_ids = (User.first.id..User.last.id).to_a
puts "TOUR_IDS=#{tour_ids}"
puts "SAMPLE_TOUR=#{tour_ids.sample}"
puts "USER_IDS=#{user_ids}"
puts "SAMPLE_USER=#{user_ids.sample}"
r_count = 30

puts "creating #{r_count} reviews..."
r_count.times do
  Review.create!([
    {
      rating: Random.rand(0..5),
      comment: "lorem ipsum comment",
      tour_id: tour_ids.sample,
      user_id: user_ids.sample
    }
  ])
end

