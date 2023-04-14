class PodcastController < ApplicationController




    def index
      @podcasts = Podcast.all
    end
end
