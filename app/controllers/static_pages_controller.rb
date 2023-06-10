class StaticPagesController < ApplicationController
    
    def home
        @tweet_last = Tweet.last
    end
end
