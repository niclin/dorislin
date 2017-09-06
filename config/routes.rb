Rails.application.routes.draw do
  root "welcome#landing"

  namespace :admin do
    resources :galleries
  end

  get "/about" => "welcome#about", :as => "about"
  get "/contact" => "welcome#contact", :as => "contact"
end
