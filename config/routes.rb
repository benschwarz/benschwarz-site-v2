BenschwarzSite::Application.routes.draw do |map|
  root :to => "pages#about"

  # match "/about", :to => "pages#about"
  # redirect /articles to index
  resources :articles, :only => :show
  match "/articles", :to => redirect("/")
end
