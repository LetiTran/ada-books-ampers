class BooksController < ApplicationController

  #Simulate a data base:
  BOOKS_LIST = [
    {id: 1, title: "1984", author: "George Orwell", descr: "Ut arabica dark, instant fair trade flavour et wings. Filter, coffee iced, aromatic, coffee in to go doppio mazagran filter. Single origin aftertaste robusta, aged, espresso, milk to go cappuccino sugar robusta."},
    {id: 2,title: "Pride & Prejudice", author: "Jane Austin", descr: "Crema variety grounds decaffeinated chicory decaffeinated organic affogato. Iced, caramelization wings, java grinder aftertaste cultivar arabica cup body. Fair trade and saucer, americano fair trade, aromatic, cup, mug as that half and half dripper."},
    {id: 3,title: "Harry Potter", author: "Jk Rowling", descr: "Froth to go crema organic, bar medium filter brewed steamed. Shop lungo redeye, trifecta, redeye and roast shop variety. Roast, eu viennese, french press, at and americano body dripper shop french press"},
    {id: 4,title: "Harry Poodr", author: "Sandy Metz", descr: "That, wings frappuccino shop foam, roast, kopi-luwak grinder variety beans breve caramelization. Carajillo steamed, carajillo, kopi-luwak robust, doppio, irish, sugar white redeye eu flavour. Rich cortado, caffeine cinnamon at in seasonal."}
  ]

  def index
    @books = BOOKS_LIST
  end

  def show
    id = params[:id]
    @book = BOOKS_LIST.find do |book|
      book[:id] == id.to_i
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
