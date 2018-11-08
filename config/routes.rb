Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', edit: 'settings'}
  devise_scope :user do
    get 'settings', to: 'devise/registrations#edit'
  end
  root to: 'pages#home'
  get 'profile', to: 'users#show', as: :profile
  put 'profile', to: 'users#update', as: :upload

  # TODO: nest ressources and use the booking controller instead
  get 'tours/:id/confirm', to: 'tours#confirm', as: :confirm
  post 'tours/:id/confirm', to: 'tours#book', as: :book
  delete 'tours/:id/confirm', to: 'tours#cancel_book', as: :cancel_book
  post 'reviews', to: 'reviews#create'
  resources :tours
end
