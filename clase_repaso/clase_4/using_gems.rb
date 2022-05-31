require 'faker'

library = []

25.times do |n|
    hash = {
        id: n,
        title: Faker::Book.title,
        author: Faker::Book.author,
        publisher: Faker::Book.publisher,
        genre: Faker::Book.genre
    }
    library << hash
end

puts library