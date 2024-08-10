
Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  resources :projects
  get 'pricing', to: 'page#pricing'
  resources :feedbacks

  devise_for :users
  
  resources :boards do
    resources :feedbacks do
      resources :comments, only: [:create, :destroy]
      member do
        post 'upvote'
        post 'downvote'
      end
    end
  end

  root action: 'about', to: 'page#about'
  
  get 'dashboard', to: 'dashboard#index'
end