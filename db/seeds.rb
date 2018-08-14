# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kitchen.destroy_all

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

kitchens = []
12.times do
  kitchens << Faker::Restaurant.unique.name
end

kitchens.each_with_index {|kitchen, i| Kitchen.create(
  title: Faker::Restaurant.unique.name,
  address: Faker::Address.unique.full_address,
  remote_photo_url: URLS[i],
  description: 'A lovely summer feel for this spacious bright kitchen.',
  price: (rand * 1000).round(-1),
  capacity: (rand * 20).round,
  availability: rand < 0.5,
  rating: (rand * 5).round
)}
