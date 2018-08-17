# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

bios = [
  "General twitter fanatic. Subtly charming pop culture advocate. Internet trailblazer.",
  "General creator. Thinker. Coffee guru. Social media junkie. Unapologetic alcohol maven.",
  "Hardcore thinker. Hipster-friendly student. Certified writer. Typical problem solver. Musicaholic. Reader.",
  "Avid coffee expert. Writer. Reader. Internet nerd. Pop culture guru. Tvaholic. Travel fan. Beer evangelist.",
  "Beer advocate. Award-winning gamer. Amateur alcohol geek. Internet ninja. Hardcore thinker.",
  "Amateur coffee guru. Alcohol trailblazer. Typical pop culture ninja. Foodaholic. Music fan. Total web geek. Twitter buff. Internet nerd.",
  "Food trailblazer. Troublemaker. Zombie scholar. Devoted analyst. Twitter buff. General alcohol guru. Evil coffee lover.",
  "Unapologetic tv aficionado. Extreme beer fan. Hipster-friendly twitter evangelist. Total writer.",
  "Proud music fanatic. Infuriatingly humble pop culture specialist. Introvert. Internet expert. Organizer.",
  "Infuriatingly humble music specialist. Alcohol aficionado. Coffee fanatic. Devoted food geek. Evil tv ninja. Zombie practitioner.",
  "Incurable food fanatic. Tv enthusiast. Devoted zombie expert. Web fanatic. Analyst. Organizer. Proud communicator. Travel junkie."
]

URLS = [
  "https://images.unsplash.com/photo-1505817368554-2165b1e42f85?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=07ad02c34d1c9d86a12330efe0dba592&auto=format&fit=crop&w=1735&q=80",
  "https://images.unsplash.com/photo-1495979830471-67a0decaa1cc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fe28f0321eae46a53fe8cb6cbd07426c&auto=format&fit=crop&w=1707&q=80",
  "https://images.unsplash.com/photo-1523264897315-ca083d2d2806?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f6c626c37c1abc42240854fac65c24d7&auto=format&fit=crop&w=752&q=80",
  "https://images.unsplash.com/photo-1497366216548-37526070297c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a62f7bbbf4ec0db2fba405d9d92b061a&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1512916194211-3f2b7f5f7de3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=82e1217db2dd8ab07adeb9daf928d188&auto=format&fit=crop&w=2550&q=80",
  "https://images.unsplash.com/photo-1510205431450-54dfb096d46e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1623f22688f35f00bc9e662f67603a91&auto=format&fit=crop&w=1502&q=80",
  "https://images.unsplash.com/photo-1525802498323-c8fbf69eb42f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72e2f65d2accdb6b2b17b00a7eb783d8&dpr=1&auto=format&fit=crop&w=1000&q=80&cs=tinysrgb",
  "https://images.unsplash.com/photo-1505165248533-c7d65ff76e21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=927f2f9056e1d61f307037dec42124dc&dpr=1&auto=format&fit=crop&w=1000&q=80&cs=tinysrgb",
  "https://images.unsplash.com/photo-1504524113458-1a56028c190c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1e952db9557067636136e83196e11af1&dpr=1&auto=format&fit=crop&w=1000&q=80&cs=tinysrgb",
  "https://images.unsplash.com/photo-1428515613728-6b4607e44363?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9571e7dfc1016803908833844646dbb3&auto=format&fit=crop&w=1500&q=80",
  "http://1.bp.blogspot.com/_beVt6kxHNIM/TH7Y8BGcwMI/AAAAAAAAAB8/I8WI6Wx8ld0/s1600/100_0753.JPG",
  "http://rosners.com/wp-content/uploads/2017/02/luxury-showroom-construction.jpg",
]

men = [
  "https://images.unsplash.com/photo-1491528323818-fdd1faba62cc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=29a17c0d14e2ef6c46b93628fa033371&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=99c6d2880c20cb72f29b5a9eba8ea898&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1505503693641-1926193e8d57?ixlib=rb-0.3.5&s=25f883d188f83803e1b63d7a1ae9524a&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e49161057e12d6c453b0680c5781d6f6&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1523477800337-966dbabe060b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=961ceeff865faaaaab16daa1a28cf9ec&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1489481039754-8701aeda983b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7e34fec062fa6127af3dfa03ca23d731&auto=format&fit=crop&w=1655&q=80",
]

women = [
  "https://images.unsplash.com/photo-1519742866993-66d3cfef4bbd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b807435a5bb4eeab2415bfc77311a7ec&auto=format&fit=crop&w=581&q=80",
  "https://images.unsplash.com/photo-1476493279419-b785d41e38d8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4920987ab334960a4d39b9db70555ef5&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1528228728175-149802236c04?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fddd9754258faafc68dcaf962c4d6152&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1495490140452-5a226aef25d4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c97011af9022f43be45b8557dcc13b91&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1492474408904-3083b7c63b07?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=21cb2a05a1f964086ee67271169a1280&auto=format&fit=crop&w=800&q=80",
  "https://images.unsplash.com/photo-1478184096253-c2d96e9263c1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=750e5c819577f4e2dfca5958704c1c1b&auto=format&fit=crop&w=1502&q=80",
]

6.times do |i|
  User.create!(
    username: Faker::Name.male_first_name,
    email: Faker::Internet.email,
    password: "123456",
    remote_photo_url: men.sample,
#    from: Faker::Address.country,
#    bio: bios[i]
  )
end

6.times do |i|
  User.create!(
    username: Faker::Name.female_first_name,
    email: Faker::Internet.email,
    password: "123456",
    remote_photo_url: women.sample,
#    from: Faker::Address.country,
#    bio: bios[6 + i]
  )
end

12.times do |i|
  Kitchen.create!(
    title: Faker::Restaurant.unique.name,
    address: Faker::Address.unique.full_address,
    remote_photo_url: URLS[i],
    description: Faker::Restaurant.description,
    price: (rand * 1000).round(-1),
    capacity: (rand * 20).round,
    availability: rand < 0.5,
    rating: (rand * 5),
    amenities: "10 ovens, 3 fridges, 20 cooking stations",
    user: User.all.shuffle[i]
  )
end

User.create!(username: "Nordin",
  email: "belkaceminordin@gmail.com",
  password: "123456",
  remote_photo_url: "https://avatars3.githubusercontent.com/u/38872998?v=4"
)

User.create!(username: "celine",
  email: "celine@gmail.com",
  password: "123456",
  remote_photo_url: "https://avatars2.githubusercontent.com/u/30133098?s=460&v=4"
)
