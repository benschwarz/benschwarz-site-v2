class PagesController < HighVoltage::PagesController
  def about
    @articles = Article.all.sort
  end
end
