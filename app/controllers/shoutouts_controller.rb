class ShoutoutsController < ApplicationController
    def index 
        shoutouts = Shoutout.all
        render json: shoutouts, include: [:shoutout_comments, :shoutout_likes, :shoutout_dislikes]
    end
end
