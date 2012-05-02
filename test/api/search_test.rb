require 'test_helper'
require 'rack/test'
require_relative '../hallon_ext/hallon_stub'
require_relative '../../lib/hallon_ext/track'
require_relative '../../lib/flaming_ironman/api'

describe FlamingIronman::API do
  include Rack::Test::Methods

  def app
    FlamingIronman::API
  end

  it "returns results" do
    get '/search?q=foo'
    last_response.status.must_equal 200
    JSON.parse(last_response.body)['tracks'].size.must_equal 10
  end

end
