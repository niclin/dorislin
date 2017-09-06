Rails.application.routes.draw do
  root "galleries#index"

  namespace :admin do
    resources :galleries
  end

  get "/about" => "galleries#about", :as => "about"
  get "/contact" => "galleries#contact", :as => "contact"
end
