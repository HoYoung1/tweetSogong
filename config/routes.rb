Rails.application.routes.draw do
  devise_for :users
  root 'pictures#index'
  get '/pictures/justview', to: 'pictures#justview'
  get '/pictures/mypage', to: 'pictures#mypage'
  resources :pictures do
    resources :comments
  end
  resources :follows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
