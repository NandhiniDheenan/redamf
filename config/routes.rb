Rails.application.routes.draw do
 # get 'show' => 'home#show'
match 'show' => 'home#show', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
