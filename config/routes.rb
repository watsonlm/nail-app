Rails.application.routes.draw do
  root 'welcome#index'

  get 'add_to_collection' => 'polishes#add_to_collection'

  get 'remove_from_collection' => 'polishes#remove_from_collection'

  get 'collection' => 'welcome#collection'

  resources :polishes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
