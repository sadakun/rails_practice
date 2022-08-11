class BooksController < ApplicationController
  def index
    @data = Book.all
  end
end
