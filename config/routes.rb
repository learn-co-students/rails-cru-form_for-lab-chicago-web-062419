Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# rails g resource Account name:string payment_status:string --no-test-framework