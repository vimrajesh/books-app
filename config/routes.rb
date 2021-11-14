Rails.application.routes.draw do
  get '/api/books' , to: 'books#home'
  get '/api/books/raw' , to: 'books#homeRaw'
  get '/api/books/:id' , to: 'books#display'
  get '/api/books/raw/:id' , to: 'books#displayRaw'
  post '/api/add_book'  , to: 'books#addBook'
  put '/api/update_book/:id' , to: 'books#updateBook'
  patch '/api/update_book/:id' , to: 'books#updateBook'
  delete '/api/books/:id' , to: 'books#deleteBook'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
