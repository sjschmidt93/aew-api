Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :wrestlers do
    resources :matches
  end

  resources :matches do
    resources :wrestlers
  end
end