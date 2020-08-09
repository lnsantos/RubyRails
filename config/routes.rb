Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, except: :destroy
  delete 'deletes/user/:id', to: 'users_exception#destroy'
  post 'login', to: 'auth#login'
end
