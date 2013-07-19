Cite::Application.routes.draw do

  mount_roboto

  root :to => "pages#show", :slug => 'index'

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :feedbacks, :only => :create
  resources :pages
  get 'reviews' => 'reviews#index'
  get ':slug' => 'pages#show', :as => :slug
end
