Rails.application.routes.draw do
  get 'admin/index' => 'admin/captains#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :whalers

  namespace :admin do
    resources :captains do
      member do
        post 'flip_feature'
      end
    end
  end
end
