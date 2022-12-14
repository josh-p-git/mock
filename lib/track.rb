class Track
    def initialize(title, artist)
      @title = title
      @artist = artist
    end
  
    def matches?(keyword) 
      fail "No keyword" if keyword.empty?
      @artist.include?(keyword) || @title.include?(keyword)
    end
  end