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
    # this instanciates a new book and leave all the fields blank
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.author = params[:book][:author]
    @book.description = params[:book][:description]
    redirect_to books_path if @book.save
    # .save returns T or F

  end

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
