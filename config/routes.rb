BenschwarzSite::Application.routes.draw do |map|
  root :to => "pages#about"

  resources :articles, :only => [:show, :index]
  match "/articles", :to => redirect("/")
  match "/about", :to => redirect("/")
end
