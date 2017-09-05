Rails.application.routes.draw do
  root "welcome#landing"

  get "/about" => "welcome#about", :as => "about"
end
