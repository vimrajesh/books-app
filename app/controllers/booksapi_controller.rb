class BooksapiController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @books = Book.all
    render json: @books.as_json(only: [:B_id, :B_title, :Author, :Publisher, :Year]), status: :ok
  end

  def show
    @book = Book.find(params[:id])
    render json: @book.as_json(only: [:B_id, :B_title, :Author, :Publisher, :Year]), status: :ok
  end
  
  def showRaw
    @book = Book.find(params[:id])
    render json: @book, status: :ok
  end
end
