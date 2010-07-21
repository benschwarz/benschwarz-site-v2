BenschwarzSite::Application.routes.draw do |map|
  root :to => "pages#home"
  match '/about', :to => "pages#about"
  Jammit::Routes.draw(map)
end
