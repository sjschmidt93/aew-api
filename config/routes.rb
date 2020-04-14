Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :wrestlers do
    resources :matches, controller: 'wrestler_matches'
  end

  resources :championships

  resources :tag_teams
  resources :events
end