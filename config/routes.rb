Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope '/api' do #, defaults: { format: :json } do
    scope '/v1' do
      resources :questions, only: [:index, :show]
      resources :answer_options, only: [:index, :show]
    end
  end
end
