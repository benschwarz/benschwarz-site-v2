class PagesController < HighVoltage::PagesController
  def about
    @articles = Article.all.sort
    rc = RestClient.get("http://feeds.pinboard.in/rss/secret:f36ba76866d89cc644b0/u:benschwarz/t:presentation/t:my-site")
    @presentations = Transcoder.for(rc.headers[:content_type]).parse(rc.to_s).first[1]['item']
  end
end
