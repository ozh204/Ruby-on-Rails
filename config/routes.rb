Rails.application.routes.draw do

  # resources :waffles

  root 'welcome#index'

  resources :waffles do
    collection do
      delete 'destroy_multiple'
    end
  end

end
