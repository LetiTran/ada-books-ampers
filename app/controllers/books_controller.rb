class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    # does a GET request:
    @book = Book.new
    # This .new action sends a request to the router to return a form for the new book to the user.
  end

  # NEW and CREATE are two DIFFERENT CYCLES. The new method is calling the create method when u hit the submitt button.

  def create
    # does  POST request:
    # This will actually create the new book:
    book = Book.new
    book.title = params[:book][:title]
    book.author = params[:book][:author]
    book.description = params[:book][:description]

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
      #need to check both editi and update for the existency of the book because there are ways of editing a form without using the broweser.
      book.update(title: params[:book][:title], author: params[:book][:author], description: params[:book][:description] ) ? (redirect_to book_path) : (render :edit)
    end
  end

  def destroy
    id = params[:id]
    @book = Book.find(id)
    if @book
      @book.destroy
    end
    redirect_to books_path
  end


end
