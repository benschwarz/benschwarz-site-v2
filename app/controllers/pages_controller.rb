class PagesController < HighVoltage::PagesController
  def about
    @articles = Article.all.sort
    rc = RestClient.get("http://feeds.delicious.com/v2/rss/bschwarz/my-site+presentation")
    @presentations = Transcoder.for(rc.headers[:content_type]).parse(rc.to_s).entries
  end
end
