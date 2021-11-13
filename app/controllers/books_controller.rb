require 'json'

class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
    @books = Book.all
    render json: @books.as_json(only: [:B_id, :B_title, :Author, :Publisher, :Year]), status: :ok
  end

  def homeRaw
    @books = Book.all
    render json: @books, status: :ok
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def display
    begin
      @book = Book.find(params[:id])
      render json: @book.as_json(only: [:B_id, :B_title, :Author, :Publisher, :Year]), status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: 'Book not found' } , status: :not_found
    end
  end
  
  def displayRaw
    begin
      @book = Book.find(params[:id])
      render json: @book, status: :ok
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: 'Book not found' } , status: :not_found
    end
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

  def addBook
    @book = Book.new(book_params)
    
    puts @book 

    if @book.save 
        render json: {status: 'SUCCESS' , book: @book} , status: :ok
    else
        render json: {status: 'FAILED' , error:@book.errors} , status: :bad_request
    end
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
