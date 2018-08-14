# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kitchen.destroy_all

Kitchen.create!(
  title: 'Light & Spacious Bright Kitchen London',
  address: '10 Clifton Gardens London W9 1DT',
  photo: 'https://images.unsplash.com/photo-1525802498323-c8fbf69eb42f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72e2f65d2accdb6b2b17b00a7eb783d8&dpr=1&auto=format&fit=crop&w=1000&q=80&cs=tinysrgb',
  description: 'A lovely summer feel for this spacious bright kitchen.',
  amenities: '10 ovens, 3 fridges, and 10 cooking tables.',
  price: 75,
  rating: 5,
  capacity: 10,
  availability: true
)

Kitchen.create!(
  title: 'Stylish Kitchen Close to River Thames',
  address: '5 Queensmill Road London SW6 6JP',
  photo: 'https://images.unsplash.com/photo-1505165248533-c7d65ff76e21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=927f2f9056e1d61f307037dec42124dc&dpr=1&auto=format&fit=crop&w=1000&q=80&cs=tinysrgb',
  description: 'Lovely warm comfortable and stylishly designed kitchen.',
  amenities:  '7 ovens, 2 fridges, and 7 cooking tables.',
  price: 65,
  rating: 4,
  capacity: 7,
  availability: true
)

Kitchen.create!(
  title: 'Green Kitchen',
  address: 'Euston Rd London N1C 4QP',
  photo: 'https://images.unsplash.com/photo-1504524113458-1a56028c190c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1e952db9557067636136e83196e11af1&dpr=1&auto=format&fit=crop&w=1000&q=80&cs=tinysrgb',
  description: 'A small kitchen filled with plant.',
  amenities: '5 ovens, 2 fridges, and 6 cooking tables.',
  price: 110,
  rating: 4,
  capacity: 6,
  availability: true
)
