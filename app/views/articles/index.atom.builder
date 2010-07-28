xml.instruct!
xml.feed("xmlns" => "http://www.w3.org/2005/Atom") do
  xml.title("Ben Schwarz's articles")
  xml.link("rel" => "self", "href" => root_url(:format => :atom))
  xml.link("rel" => "alternate", "href" => root_url)
  xml.id("tag:#{request.host},2005:#{request.request_uri.split(".")[0]}")
  xml.updated(@articles.first.created_at.strftime("%Y-%m-%dT%H:%M:%SZ")) if @articles.any?
  xml.author("Ben Schwarz")


  xml << render @article
end