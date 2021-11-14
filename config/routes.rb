Rails.application.routes.draw do
  get '/books/fetch_books' , to: 'books#home'
  get '/books/fetch_books_raw' , to: 'books#homeRaw'
  get '/books/book/:id' , to: 'books#display'
  get '/books/book/raw/:id' , to: 'books#displayRaw'
  post '/books/add_book'  , to: 'books#addBook'
  put '/books/update_book/:id' , to: 'books#updateBook'
  patch '/books/update_book/:id' , to: 'books#updateBook'
  delete '/books/delete_book/:id' , to: 'books#deleteBook'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
