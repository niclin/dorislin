Rails.application.routes.draw do
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
