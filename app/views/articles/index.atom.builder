atom_feed do |feed|
  feed.title("Articles by Ben Schwarz")

  feed.updated(@articles.first.published)

  @articles.each do |event|
    feed.entry(event) do |entry|
      content = Haml::Engine.new(event.template).render

      entry.title(h(event.title))
      entry.content(content, type: 'html')

      entry.author do |author|
        author.name("Ben Schwarz")
      end
    end
  end
end