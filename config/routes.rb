
Rails.application.routes.draw do
  devise_for :users
=begin
  namespace :api, defaults: {format: :json} do
    scope module: :v1 do
      resources :names, only: :index
    end
    end
=end
  # resources :names, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    namespace :v1 do
      resources :names, only: :index

      devise_scope :user do
        post "/sign_in", :to => 'sessions#create'
        post "/sign_up", :to => 'registrations#create'
        delete "/sign_out", :to => 'sessions#destroy'
      end

    end
  end
end
