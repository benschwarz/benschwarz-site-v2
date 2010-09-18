BenschwarzSite::Application.routes.draw do |map|
  root :to => "pages#about"

  # match "/about", :to => "pages#about"
  resources :articles, :only => :show
end
