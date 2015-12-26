# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_reading_lists = [
  {name: "Fantasy Books"},
  {name: "Science Fiction Books"}
]

seed_reading_lists.each do |list|
  ReadingList.create list
end

index = 0

# def choose_list
#   if seed_books[index][:genre] == "fantasy"
#     rl = ReadingList.where(name: "Fantasy Books")
#     rl[0].id
#   elsif seed_books[index][:genre] == "science fiction"
#     rl = ReadingList.where(name: "Science Fiction Books")
#     rl[0].id
#   end
# end

seed_books = [
  {title: "A Game of Thrones", author: "George R.R. Martin", read_status: true, genre: "fantasy", reading_list_id: 1},
  {title: "The Eye of the World", author: "Robert Jordan", read_status: true, genre: "fantasy", reading_list_id: 1},
  {title: "Lord of the Rings", author: "J.R.R. Tolkein", read_status: true, genre: "fantasy", reading_list_id: 1},
  {title: "Harry Potter and the Sorceror's Stone", author: "J.K Rowling", read_status: true, genre: "fantasy", reading_list_id: 1},
  {title: "Outlander", author: "Diana Gabaldon", read_status: true, genre: "fantasy", reading_list_id: 1},
  {title: "The Crystal Cave", author: "Mary Stewart", read_status: true, genre: "fantasy", reading_list_id: 1},
  {title: "Alanna: The First Adventure", author: "Tamora Pierce", read_status: true, genre: "fantasy", reading_list_id: 1},
  {title: "Dune", author: "Frank Herbert", read_status: false, genre: "science fiction", reading_list_id: 2},
  {title: "The Way of Kings", author: "Brandon Sanderson", read_status: false, genre: "fantasy", reading_list_id: 1},
  {title: "Gardens of the Moon", author: "Steven Erikson", read_status: false, genre: "fantasy", reading_list_id: 1},
  {title: "Ender's Game", author: "Orson Scott Card", read_status: true, genre: "science fiction", reading_list_id: 2},
  {title: "Snow Crash", author: "Neal Stephenson", read_status: false, genre: "science fiction", reading_list_id: 2},
  {title: "Star Wars X-Wing: Rogue Squadron", author: "Michael A. Stackpole", read_status: true, genre: "science-fiction", reading_list_id: 2}
]


seed_books.each do |book|
  Book.create book
  index +=1
end

seed_reviews = [
  {book_id: 1, body: "A fun romp through the pseudo-middle ages. Not to be missed.", reviewer:"Jamie C."},
  {book_id: 1, body: "Winter is coming! Brrrr. The books are way better than the TV series.", reviewer:"Alexandra P."},
  {book_id: 2, body: "Whose eye? Why, the eye of the world, of course! Sit back and enjoy the ride. It will make you laugh. It will make you weep. It will make you think about your humanity and the humanity of those around you.", reviewer:"John H.P."},
  {book_id: 3, body: "f", reviewer:"Marigold Weiss"},
  {book_id: 4, body: "f", reviewer:"Samantha P."},
  {book_id: 4, body: "f", reviewer:"Mia M."},
  {book_id: 5, body: "f", reviewer:"Hamworth G. Wellington"},
  {book_id: 6, body: "f", reviewer:"Wixby Wick"},
  {book_id: 6, body: "f", reviewer:"X. Lao"},
  {book_id: 7, body: "f", reviewer:"Eric Danforth"},
  {book_id: 8, body: "f", reviewer:"Jesus G."},
  {book_id: 9, body: "f", reviewer:"Remmington Wadsworth"},
  {book_id: 9, body: "f", reviewer:"Maximillian W.D."},
  {book_id: 9, body: "f", reviewer:"Koji Nakamura"},
  {book_id: 10, body: "f", reviewer:"Toby Stubbins"},
  {book_id: 11, body: "f", reviewer:"Hannah P.G."},
  {book_id: 13, body: "f", reviewer:"P.J. Merriweather"},
  {book_id: 13, body: "f", reviewer:"M.J. Madden"}
]

seed_reviews.each do |review|
  Review.create(review)
end
