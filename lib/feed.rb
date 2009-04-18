require 'feedzirra'
class Feed

  def self.linked
    linked_urls = ["http://feeds.delicious.com/v2/rss/kapowee/progmatica?count=8", "http://feeds.delicious.com/v2/rss/clr.portland.me/progmatica?count=8", "http://feeds.delicious.com/v2/rss/codeofficer/progmatica?count=8"]
    Feedzirra::Feed.fetch_and_parse( linked_urls )
  end

  def self.blogged
    blogged_urls = ["http://dialogues.port49.com/feed/atom.xml", "http://www.codeofficer.com/blog/rss_2.0/" ]
    
    Feedzirra::Feed.fetch_and_parse( blogged_urls )
  end

end
