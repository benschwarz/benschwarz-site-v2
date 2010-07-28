class ArticlesController < ApplicationController
  respond_to :html, :atom, :only => :index
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article[params[:id]]
    fresh_when :etag => @article
    
    render :template => "../articles/#{params[:id]}", :layout => "article"
  end
end