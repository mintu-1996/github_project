Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :repositories, only: [:index] do
    collection do
      get :paginated
    end
  end
end
