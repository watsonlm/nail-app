Rails.application.routes.draw do
  resources :nail_arts
  root 'welcome#index'

  get 'add_to_collection' => 'polishes#add_to_collection'

  get 'remove_from_collection' => 'polishes#remove_from_collection'

  get 'collection' => 'welcome#collection'

  get 'brand' => 'polishes#brand'

  get 'color_family' => 'polishes#color_family'

  resources :polishes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
