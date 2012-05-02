module Hallon
  class Track
    def to_hash
      {
        name: name,
        artist: artist.name,
        uri: to_link.to_uri
      }
    end
  end
end
