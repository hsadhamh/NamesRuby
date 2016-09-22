
Rails.application.routes.draw do
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
    end
  end
end
