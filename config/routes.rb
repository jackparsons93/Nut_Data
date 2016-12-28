Rails.application.routes.draw do
  resources :data  do
  collection { post :import }
end
  resources :nut_data do
  collection { post :import }
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
