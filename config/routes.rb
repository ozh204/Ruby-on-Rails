Rails.application.routes.draw do

  resources :waffles

  root 'welcome#index'

end
