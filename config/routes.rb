Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :wrestlers do
    get 'popular', on: :collection
    resources :matches, controller: 'wrestler_matches'
  end

  resources :reigns do
    get 'active', on: :collection
  end

  resources :tag_teams do
    resources :matches, controller: 'tag_team_matches'
    get 'official', on: :collection
  end

  resources :events do
    resources :matches, controller: 'event_matches'
  end
end