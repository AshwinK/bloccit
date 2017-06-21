Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  post 'users/confirm' => 'users#confirm'

  resources :sessions, only: [:new, :create, :destroy]

  #root({to: 'welcome#index'})
  root 'welcome#index'

end
