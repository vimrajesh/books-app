require 'json'

class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books.as_json(only: [:B_id, :B_title, :Author, :Publisher, :Year] )
  end

  def show
    @book = Book.find(params[:id])
    @answer = JSON.pretty_generate(@book.as_json(only: [:B_id, :B_title, :Author, :Publisher, :Year] ))
    render json: @answer
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.create(book_params)

    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)

    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path  
  end

  private

  def book_params
    params.require(:book).permit(:B_id, :B_title, :Author, :Publisher, :Year)
  end
end
