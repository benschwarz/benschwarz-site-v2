BenschwarzSite::Application.routes.draw do |map|
  root :to => "pages#home"
  match "/about", :to => "pages#about"
  resources :articles, :only => [:index, :show]
end
