Rails.application.routes.draw do
  get 'userrs/index'
  get 'userrs/create'
  get 'userrs/update'
  get 'userrs/destroy'
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  get 'main/index'
  resources :norests
  resources :posts
  resources :users
  get 'posts/index'
  get 'norests/index'


  get 'users', to: 'users#index'
  # get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'


  root 'main#index'
  scope '/api/v1' do
      resources :userrs
  end

end
