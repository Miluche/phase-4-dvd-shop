require 'faker'

puts "Seeding..."
Movie.destroy_all
# create an array of categories
categories = ['Action', 'Comedy', 'Drama', 'Horror', 'Romance']

# generate 50 random movies
50.times do
  Movie.create(
    title: Faker::Movie.title,
    year: rand(1950..2023),
    length: rand(60..240),
    description: Faker::Lorem.paragraph,
    poster_url: Faker::Internet.url,
    category: categories.sample,
    discount: [true, false].sample,
    female_director: [true, false].sample
  )
end

puts "Done seeding"
