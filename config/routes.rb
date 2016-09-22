
Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    scope module: :v1 do
      resources :names, only: :index
    end
  end
  #resources :names, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
