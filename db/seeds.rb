# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# ______________________________
# Create authors:

author_list = [
  {
    name: "J.K. Rowling"
  },
  {
    name: "Stephen King"
  },
  {
    name: "William Shakesphere"
  },
]

author_list.each do |author|
  worked = Author.create(author)
  # to make sure it worked:
  puts "#{author[:name]} has ID: #{worked}"
end


# ______________________________
# Create books:

books_list = [
  {
    title: "Harry Potter",
    author_id: Author.find(1).id,
    description: "A book"
  },
  {
    title: "Scary",
    author_id: Author.find(2).id,
    description: "Another book"
  },
  {
    title: "A love story",
    author_id: Author.find(3).id,
    description: "Another second book"
  },
]

books_list.each do |book|
  worked = Book.create(title: book[:title], author_id: book[:author_id], description: book[:description])
  # to make sure it worked:
  puts "#{book[:title]} has ID: #{worked}, has author with the id: #{book[:author_id]}"
end
