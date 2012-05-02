module Hallon
  class Base
    def initialize(*args)
    end
    def name
      'Test Name'
    end
    def to_link
      Link.new
    end
    def load
      self
    end
  end

  class Track < Base
    def artist
      Artist.new
    end
  end

  class Artist < Base
  end

  class Search < Base
    def tracks
      10.times.map{ Track.new }
    end
  end

  class Link < Base
    def to_uri
      "spotifake:#{self.class.name.downcase}:12345678"
    end
  end
end


