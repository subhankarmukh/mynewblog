Rails.application.routes.draw do
  resources :blog_posts
  get 'blog_category/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
                        registrations: 'users/registrations',
                        sessions: 'users/sessions'
                    }
  get 'static_pages/home'


  # You can have the root of your site routed with "root"
  #root 'static_pages#home'
  root 'blog_posts#index'
end
