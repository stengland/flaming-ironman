require 'test_helper'
require_relative './hallon_stub'
require_relative '../../lib/hallon_ext/track'

describe Hallon::Track do

  let(:track) do
    Hallon::Track.new
  end

  it "returns something" do
    track.to_hash[:name].must_equal 'Test Name'
  end

end
