Rails.application.routes.draw do

  root 'welcome#index'

  resources :waffles do
    collection do
      delete 'destroy_multiple'
    end
  end

  resources :users do
    collection do
      delete 'destroy_multiple'
    end
  end

end
