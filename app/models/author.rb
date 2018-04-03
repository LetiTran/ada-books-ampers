class Author < ApplicationRecord
  has_many :books

<<<<<<< HEAD

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

=======
  def first_published
    my_books = self.books.order(:publication_year)

    first_book = my_books.first

    return first_book.publication_year
  end
>>>>>>> bf56c72c0a0ed62ef3ba191b928b35cdf28cc9b4
end
