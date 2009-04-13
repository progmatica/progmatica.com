require 'feedzirra'
class Feed

  def self.delicious
    Feedzirra::Feed.fetch_and_parse( 'http://feeds.delicious.com/v2/rss/tag/progmatica?count=15' )
  end
end
