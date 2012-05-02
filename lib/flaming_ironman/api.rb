require 'grape'

module FlamingIronman
  class API < Grape::API
    version 'v1', :using => :header
    format :json

    desc 'search for a track'
    #params do
    #requires :q, :type => String, :desc => "Search term."
    #end
    get :search do
      s = Hallon::Search.new(params[:q]).load
      {
        tracks: s.tracks.map(&:to_hash)
      }
    end

    resource :tracks do
    end

  end
end
