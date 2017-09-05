Rails.application.routes.draw do
  root "welcome#landing"

  get "/about" => "welcome#about", :as => "about"
  get "/contact" => "welcome#contact", :as => "contact"
end
