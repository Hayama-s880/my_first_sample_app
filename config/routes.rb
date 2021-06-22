Rails.application.routes.draw do
  get '/' => 'books#index'
  post '/books/delete/:id' => 'books#delete'
  get '/books/edit/:id' => 'books#edit'
  
    #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :books, only: [:new,:create,:update]
  
  
end
