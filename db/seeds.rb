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
  {book_id: 3, body: "Not all that into hobbits, elves, and giant trees that walk? Get ready to have your world turned upside-down.", reviewer:"Marigold Weiss"},
  {book_id: 4, body: "My daughter won't put this book down. She reads it during school. She reads it all night. She won't talk to anyone. Apparently it's a great book, but it's tearing our family apart.", reviewer:"Samantha P."},
  {book_id: 4, body: "If you love a good ol' wizarding world, you'll love this book.", reviewer:"Mia M."},
  {book_id: 5, body: "I cried at the end. I cried at the beginning. I cried pretty much the entire time I read it.", reviewer:"Hamworth G. Wellington"},
  {book_id: 6, body: "What kind of cave is it? A crystal one, of course. Prepare to dream of glittery crystals all night and day after reading this delightful novel.", reviewer:"Wixby Wick"},
  {book_id: 6, body: "Crystals? Caves? Count me in for sure. I'm a sucker for a classic cave book. And crystals? Forget it. This book had me from the minute I opened it. A real page turner.", reviewer:"X. Lao"},
  {book_id: 7, body: "Depressing. Overwraught. Not worth the time or energy to read it. I read the whole thing, and now I regret it.", reviewer:"Eric Danforth"},
  {book_id: 8, body: "I must have read this book 1,000 times in my life. Each time I read it, I learn something new about the book. And about myself.", reviewer:"Jesus G."},
  {book_id: 9, body: "A great gift for the angsty teen in your life.", reviewer:"Remmington Wadsworth"},
  {book_id: 9, body: "If you can make it past the brutally gory opening sequence, it's worth reading. Also, there's a lot of eye-roll-inducing romance.", reviewer:"Maximillian W.D."},
  {book_id: 9, body: "The best thing I've read since 50 Shades.", reviewer:"Koji Nakamura"},
  {book_id: 10, body: "At first it seemed really boring. Then it picked up. Then it got boring again. I couldn't finish it. I gave it to my son, and he thought it was terrific, fwiw.", reviewer:"Toby Stubbins"},
  {book_id: 11, body: "A book about kids waging war? That's messed up. And that's what makes this book so compelling. Also, if you like video games, there are parts that are very video-gamey. Recommend.", reviewer:"Hannah P.G."},
  {book_id: 13, body: "I've read many other books by this author, so I expected to be blown away by this one. What a let down. Characters are one dimensional. The protagonist is a callow lunatic. Do not recommend.", reviewer:"P.J. Merriweather"},
  {book_id: 13, body: "This book transformed the way I look at fiction. Please don't listen to the critics- it deserves a deep read.", reviewer:"M.J. Madden"}
]

seed_reviews.each do |review|
  Review.create(review)
end
