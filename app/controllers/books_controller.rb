class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    @book = Book.new
    # This .new action sends a request to the router to return a form for the new book to the user.
  end

  def create
    # This will actually create the new book:
    book = Book.new
    book.title = params[:book][:title]
    book.author = params[:book][:author]
    book.description = params[:book][:description]
    redirect_to books_path if book.save # .save returns T or F
  end
  # delete the create.html.erb file! because you dont need it anymore!

  def edit
  end

  def update
  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    @book.destroy
  end


end
