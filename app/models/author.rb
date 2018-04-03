class Author < ApplicationRecord
  has_many :books


  # Learning about model logic - textbook example:
  # (to add a field with the info 'first published year')

  #  in this file:
  # def first_published
  #   books_with_year = self.books.where.not(publication_date: nil)
  #   first_book = books_with_year.order(publication_date: :asc).first
  #   return first_book.publication_date
  # end

  # Then in the show.html.erb file put this:
  # <p>
  # The author <%= @book.author.name %> was first published in the year <%= @book.author.first_published %>
  # </p>

end
