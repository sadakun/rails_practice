class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def new
  end

  def create
    @book = Book.new(book_title: params[:book_title], book_author: params[:book_author], book_published: params[:book_published], book_description: params[:book_description])
    @book.save
    flash[:addMessage] = 'Book succesfully added'

    redirect_to('/index')
  end

  def edit    
    @book = Book.find_by(id: params[:id])
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.book_title = params[:book_title]
    @book.book_author = params[:book_author]
    @book.book_published = params[:book_published]
    @book.book_description = params[:book_description]
    @book.save

    flash[:updateMessage] = 'Book succesfully updated'
    redirect_to('/index')
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy

    flash[:deleteMessage] = 'Book succesfully deleted'
    redirect_to('/index')
  end
  
end
