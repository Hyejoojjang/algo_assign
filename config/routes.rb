Rails.application.routes.draw do
  resources :baths
  get 'baths/home'
  root 'baths#home'
  get 'info/result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
