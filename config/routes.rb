BenschwarzSite::Application.routes.draw do |map|
  root :to => "pages#about"

  resources :articles, :only => :show
  match "/articles", :to => redirect("/")
end
