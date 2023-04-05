class PodcastController < ApplicationController
  require 'rspotify'

    def index
      @userquery = params[:search]
      playlists = RSpotify::Playlist.search(@userquery) if @userquery.present?
      print @userquery
      @playlist = playlists.first if @userquery.present?
      @tracks = @playlist.tracks if @userquery.present?

    end
end
