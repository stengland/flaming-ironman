module FlamingIronman
  @@session = Hallon::Session.initialize IO.read('./spotify_appkey.key')

  def self.session
    @@session
  end
end
