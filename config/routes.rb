Rails.application.routes.draw do
  resources :posts do
    member do
      delete :delete_image_attachment
    end
    
    resources :comments
  end

  root to: 'pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end