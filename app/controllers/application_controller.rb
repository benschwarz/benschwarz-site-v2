class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  before_filter { Jammit.packager.precache_all } if Rails.env.development?
end
