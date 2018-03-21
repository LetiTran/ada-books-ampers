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

  # NEW and CREATE are two DIFFERENT CYCLES. The new method is calling the create method when u hit the submitt button.

  def create
    # This will actually create the new book:
    book = Book.new
    book.title = params[:book][:title]
    book.author = params[:book][:author]
    book.description = params[:book][:description]
    book.save ? (redirect_to books_path) : (render :new)
    # .save returns T or F
    #if .save does NOT work, stay on this page and show the form again.
  end
  # DELETE the create.html.erb file! because it is no longer rendering its own view because it is redirecting to a different action.... so, you dont need it anymore!

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
