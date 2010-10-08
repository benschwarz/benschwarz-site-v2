class PagesController < HighVoltage::PagesController
  def about
    @articles = Article.all.sort
    Transcoder.register("application/rss+xml; charset=utf-8", Transcoder::Feed)
    rc = RestClient.get("http://feeds.delicious.com/v2/rss/bschwarz/my-site+presentation")
    @presentations = Transcoder.for(rc.headers[:content_type]).parse(rc.to_s).entries
  end
end
