class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  rescue_from Article::NotFound, :with => :not_found
  
  protected
  
  def not_found
    render(:file => "#{Rails.root}/public/404.html",
           :status => :not_found,
           :layout => false)
  end
end
