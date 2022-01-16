Rails.application.routes.draw do
  resources :student_profiles
  resources :students

  root 'admin#login'
  post '/', :to => "admin#login"
  get '/', :to => "admin#login"
  get '/', :to => "admin#logout"
  post '/', :to => "admin#logout"
 
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  post 'admin/logout'
  get 'instagram', to: 'instagram#index'

end
