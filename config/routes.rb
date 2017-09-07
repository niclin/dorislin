Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root "galleries#index"

  namespace :admin do
    resources :galleries do
      member do
        post :reorder
      end
    end
  end

  resources :galleries

  get "/about" => "galleries#about", :as => "about"
  get "/contact" => "galleries#contact", :as => "contact"
end
