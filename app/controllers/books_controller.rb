class BooksController < ApplicationController

  def index
<<<<<<< HEAD
    # @books = Book.all
=======
>>>>>>> eaee7c399f709fe4ed1bd0834fefec2f5842caab
    # If we are in a nested route (/authors/7/books), we don't want @books to be Book.all, we want @books to just be the author's books
    if params[:author_id]
      author = Author.find_by(id: params[:author_id])
      @books = author.books
    else
      # we don't need to find a specific author's books, we just need to list all books
      @books = Book.all

    end
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    # does a GET request:
    @book = Book.new
    # This .new action sends a request to the router to return a form for the new book to the user.
    @book.author = Author.find(params[:author_id])
    @action = author_books_path(params[:author_id])
  end

  # NEW and CREATE are two DIFFERENT CYCLES. The new method is calling the create method when u hit the submitt button.

  def create
    # does  POST request:
    # This will actually create the new book:
    # book = Book.new
    # book.title = params[:book][:title]
    # book.author = params[:book][:author]
    # book.description = params[:book][:description]

    #  all this up there could be done by doing this:
    book = Book.new(book_params)

    @book.author = Author.find(params[:author_id])

    # does a GET request:
    book.save ? (redirect_to books_path) : (render :new)
    # .save returns T or F
    #if .save does NOT work, stay on this page and show the form again.

  end
  # DELETE the create.html.erb file! because it is no longer rendering its own view because it is redirecting to a different action.... so, you dont need it anymore!

  def edit
    Book.find_by(id: params[:id]) ? (@book = Book.find_by(id: params[:id])) : (redirect_to books_path)
    # send user to a home page form if book does not exist
  end

  def update
    book = Book.find_by(id: params[:id])
    if !book.nil?
      #need to check both edit it and update for the existency of the book because there are ways of editing a form without using the broweser.
      # book.update(title: params[:book][:title], author: params[:book][:author], description: params[:book][:description] ) ? (redirect_to book_path) : (render :edit)

      #  all this up there could be done by doing this:
      book.update(book_params) ? (redirect_to book_path) : (render :edit)

    end
  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    @book ? @book.destroy : (redirect_to books_path)
  end

  private

  def book_params
    return params.require(:book).permit(:author_id, :description, :title, genre_ids: [])
  end


end
