Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :contacts
      post "users", to: "users#create"
      put "users/edit", to: "users#update"
    end
  end

  # constraints subdomain: 'api' do
  #   scope module: 'api' do
  #     namespace :v1 do
  #       resources :contacts
  #     end
  #   end
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
