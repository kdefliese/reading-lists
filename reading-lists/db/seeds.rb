# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_reading_lists = [
  {name: "Fantasy Books"},
  {name: "Science Fiction Books"},
  {name: "To Read"},
  {name: "Completed Books"}
]

seed_reading_lists.each do |list|
  ReadingList.create list
end

seed_books = [
  {title: "A Game of Thrones", author: "George R.R. Martin", read_status: true, genre: "fantasy"},
  {title: "The Eye of the World", author: "Robert Jordan", read_status: true, genre: "fantasy"},
  {title: "Lord of the Rings", author: "J.R.R. Tolkein", read_status: true, genre: "fantasy"},
  {title: "Harry Potter and the Sorceror's Stone", author: "J.K Rowling", read_status: true, genre: "fantasy"},
  {title: "Outlander", author: "Diana Gabaldon", read_status: true, genre: "fantasy"},
  {title: "The Crystal Cave", author: "Mary Stewart", read_status: true, genre: "fantasy"},
  {title: "Alanna: The First Adventure", author: "Tamora Pierce", read_status: true, genre: "fantasy"},
  {title: "Dune", author: "Frank Herbert", read_status: false, genre: "science fiction"},
  {title: "The Way of Kings", author: "Brandon Sanderson", read_status: false, genre: "fantasy"},
  {title: "Gardens of the Moon", author: "Steven Erikson", read_status: false, genre: "fantasy"},
  {title: "Ender's Game", author: "Orson Scott Card", read_status: true, genre: "science fiction"},
  {title: "Snow Crash", author: "Neal Stephenson", read_status: false, genre: "science fiction"},
  {title: "Star Wars X-Wing: Rogue Squadron", author: "Michael A. Stackpole", read_status: true, genre: "science-fiction"}
]

seed_books.each do |book|
  Book.create book
end
