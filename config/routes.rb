BenschwarzSite::Application.routes.draw do |map|
  root :to => "pages#home"
  match '/about', :to => "pages#about"
end
