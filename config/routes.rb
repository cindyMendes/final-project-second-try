Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/dogs'
  get 'welcome/lists'
  get 'welcome/users'
  get 'welcome/new'

  resources :users
  resources :lists
  resources :dogs

  root to: 'welcome#index'

end
